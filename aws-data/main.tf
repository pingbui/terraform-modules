data "aws_region" "selected" {}

data "aws_availability_zones" "available" {}

locals {
  default_amis = var.use_default ? tomap({
    "ubuntu1804" = {
      owners      = ["099720109477"]
      most_recent = true
      filters = {
        name                = ["ubuntu-minimal/images/*/ubuntu-bionic-18.04-*"]
        virtualization-type = ["hvm"]
        root-device-type    = ["ebs"]
        architecture        = ["x86_64"]
      }
    }
    "amazonlinux2" = {
      owners      = ["amazon"]
      most_recent = true
      filters = {
        name                = ["amzn2-ami-kernel-*hvm*-gp*", "amzn2-ami-hvm*-gp*"]
        virtualization-type = ["hvm"]
        root-device-type    = ["ebs"]
        architecture        = ["x86_64"]
      }
    }
    "ubuntu2004" = {
      owners      = ["099720109477"]
      most_recent = true
      filters = {
        name                = ["ubuntu/images/*/ubuntu-focal-20.04-amd64-*"]
        virtualization-type = ["hvm"]
        root-device-type    = ["ebs"]
        architecture        = ["x86_64"]
      }
    }
    "ubuntu2204" = {
      owners      = ["099720109477"]
      most_recent = true
      filters = {
        name                = ["ubuntu/images/*/ubuntu-jammy-22.04-*"]
        virtualization-type = ["hvm"]
        root-device-type    = ["ebs"]
        architecture        = ["x86_64"]
      }
    }
    "al2023-arm" = {
      owners      = ["amazon"]
      most_recent = true
      filters = {
        name                = ["al2023-ami-2023*-arm64"]
        virtualization-type = ["hvm"]
        root-device-type    = ["ebs"]
        architecture        = ["arm64"]
      }
    }
    "ubuntu2004-arm" = {
      owners      = ["099720109477"]
      most_recent = true
      filters = {
        name                = ["ubuntu/images/*/ubuntu-focal-20.04-arm64-*"]
        virtualization-type = ["hvm"]
        root-device-type    = ["ebs"]
        architecture        = ["arm64"]
      }
    }
    "al2023" = {
      owners      = ["amazon"]
      most_recent = true
      filters = {
        name                = ["al2023-ami-2023*-x86_64"]
        virtualization-type = ["hvm"]
        root-device-type    = ["ebs"]
        architecture        = ["x86_64"]
      }
    }
  }) : tomap({})

  aws_amis = merge(local.default_amis, var.aws_amis)
}

data "aws_ami" "this" {
  for_each = local.aws_amis

  most_recent      = try(each.value.most_recent, true)
  owners           = try(each.value.owners, ["amazon"])
  name_regex       = try(each.value.name_regex, null)
  executable_users = try(each.value.executable_users, null)

  dynamic "filter" {
    for_each = try(each.value.filters, {})
    content {
      name   = filter.key
      values = filter.value
    }
  }
}
