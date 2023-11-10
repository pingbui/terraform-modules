locals {
  tag_name        = try(var.tags["Name"], var.name, "")
  tags_all_length = var.create && var.create_spot_instance ? length(module.ec2_instances[0].tags_all[0]) : 0
}

#tfsec:ignore:aws-ec2-enable-at-rest-encryption tfsec:ignore:aws-ec2-enforce-http-token-imds
module "ec2_instances" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 4.1"

  name   = var.number_of_instances == 1 ? var.name : "${var.name}-${count.index + 1}"
  create = var.create
  count  = var.create ? var.number_of_instances : 0

  ### Spot Instance (when create_spot_instance = true):
  create_spot_instance      = var.create_spot_instance
  spot_type                 = var.spot_type
  spot_wait_for_fulfillment = true

  ### main vars:
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = var.subnet_ids[count.index % length(var.subnet_ids)]
  key_name               = var.key_name
  monitoring             = var.monitoring
  iam_instance_profile   = var.iam_instance_profile
  vpc_security_group_ids = var.vpc_security_group_ids
  root_block_device      = var.root_block_device
  user_data              = var.user_data

  tags = merge(
    { for k, v in var.tags : k => v if k != "Name" },
    { Name = var.number_of_instances == 1 ? local.tag_name : "${local.tag_name}-${count.index + 1}" }
  )
}

resource "aws_ec2_tag" "spot_instance_tags" {
  count = var.create && var.create_spot_instance ? (var.number_of_instances * local.tags_all_length) : 0

  resource_id = module.ec2_instances[floor(count.index / local.tags_all_length)].spot_instance_id[0]
  key         = [for k, v in module.ec2_instances[floor(count.index / local.tags_all_length)].tags_all[0] : k][count.index % local.tags_all_length]
  value       = [for k, v in module.ec2_instances[floor(count.index / local.tags_all_length)].tags_all[0] : v][count.index % local.tags_all_length]
}

## EIP:
resource "aws_eip" "this" {
  count    = var.create && var.create_eip ? var.number_of_instances : 0
  domain   = "vpc"
  instance = module.ec2_instances[count.index].id[0]
  tags     = module.ec2_instances[count.index].tags_all[0]

  depends_on = [
    module.ec2_instances,
    time_sleep.wait_for_ec2_instances
  ]
}

resource "time_sleep" "wait_for_ec2_instances" {
  count           = var.create ? 1 : 0
  create_duration = var.create_spot_instance ? "120s" : "60s"

  triggers = {
    primary_network_interface_ids = sha1(join(",", [for instance in module.ec2_instances : instance.primary_network_interface_id[0]]))
  }

  depends_on = [module.ec2_instances]
}

data "aws_region" "current" {}

## CloudWatch Recovery:
resource "aws_cloudwatch_metric_alarm" "ec2_recover" {
  count               = var.create && var.create_cloudwatch_metric_alarm && !var.create_spot_instance ? var.number_of_instances : 0
  alarm_name          = "ec2-recovery-${lower(var.name)}${var.number_of_instances == 1 ? "" : "-${count.index + 1}"}"
  namespace           = "AWS/EC2"
  evaluation_periods  = 2
  period              = 60
  alarm_description   = "Auto recover ${lower(var.name)}-${count.index + 1} instance"
  alarm_actions       = ["arn:aws:automate:${data.aws_region.current.id}:ec2:recover"]
  statistic           = "Minimum"
  comparison_operator = "GreaterThanThreshold"
  threshold           = "0.0"
  metric_name         = "StatusCheckFailed_System"

  dimensions = {
    InstanceId = module.ec2_instances[count.index].id[0]
  }

  tags = module.ec2_instances[count.index].tags_all[0]
}
