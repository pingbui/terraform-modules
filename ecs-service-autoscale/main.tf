## IAM role:
locals {
  role_arn = var.role_arn == "" ? join("", aws_iam_role.ecs_autoscale.*.arn) : var.role_arn
}
resource "aws_iam_role" "ecs_autoscale" {
  count = var.enabled && var.role_arn == "" ? 1 : 0
  name  = "${var.name}-ecs-autoscale"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "application-autoscaling.amazonaws.com"
      },
      "Effect": "Allow"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "ecs_autoscale" {
  count      = var.enabled && var.role_arn == "" ? 1 : 0
  role       = join("", aws_iam_role.ecs_autoscale.*.id)
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceAutoscaleRole"
}

## app autoscaling
resource "aws_appautoscaling_target" "this" {
  count              = var.enabled ? 1 : 0
  max_capacity       = var.max_capacity
  min_capacity       = var.min_capacity
  resource_id        = "service/${var.cluster_name}/${var.service_name}"
  role_arn           = local.role_arn
  scalable_dimension = "ecs:service:DesiredCount"
  service_namespace  = "ecs"

  lifecycle {
    ignore_changes = [
      min_capacity,
      max_capacity,
    ]
  }
}

resource "aws_appautoscaling_policy" "cpu" {
  count              = var.enabled && var.tracking_cpu ? 1 : 0
  name               = "${var.name}-cpu"
  policy_type        = "TargetTrackingScaling"
  resource_id        = join("", aws_appautoscaling_target.this.*.resource_id)
  scalable_dimension = join("", aws_appautoscaling_target.this.*.scalable_dimension)
  service_namespace  = join("", aws_appautoscaling_target.this.*.service_namespace)

  target_tracking_scaling_policy_configuration {
    target_value       = var.target_cpu
    disable_scale_in   = var.disable_scale_in
    scale_in_cooldown  = var.scale_in_cooldown
    scale_out_cooldown = var.scale_out_cooldown

    predefined_metric_specification {
      predefined_metric_type = "ECSServiceAverageCPUUtilization"
    }
  }
}

resource "aws_appautoscaling_policy" "mem" {
  count              = var.enabled && var.tracking_mem ? 1 : 0
  name               = "${var.name}-mem"
  policy_type        = "TargetTrackingScaling"
  resource_id        = join("", aws_appautoscaling_target.this.*.resource_id)
  scalable_dimension = join("", aws_appautoscaling_target.this.*.scalable_dimension)
  service_namespace  = join("", aws_appautoscaling_target.this.*.service_namespace)

  target_tracking_scaling_policy_configuration {
    target_value       = var.target_mem
    disable_scale_in   = var.disable_scale_in
    scale_in_cooldown  = var.scale_in_cooldown
    scale_out_cooldown = var.scale_out_cooldown

    predefined_metric_specification {
      predefined_metric_type = "ECSServiceAverageMemoryUtilization"
    }
  }
}

## Schedules:
resource "aws_appautoscaling_scheduled_action" "this" {
  for_each           = var.enabled ? toset(var.schedules) : []
  name               = each.value.name
  resource_id        = join("", aws_appautoscaling_target.this.*.resource_id)
  scalable_dimension = join("", aws_appautoscaling_target.this.*.scalable_dimension)
  service_namespace  = join("", aws_appautoscaling_target.this.*.service_namespace)
  schedule           = each.value.schedule
  timezone           = var.timezone

  scalable_target_action {
    min_capacity = try(each.value.min, null)
    max_capacity = try(each.value.max, null)
  }
}