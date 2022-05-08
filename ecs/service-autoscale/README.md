## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.70.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_appautoscaling_policy.cpu](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_policy) | resource |
| [aws_appautoscaling_policy.mem](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_policy) | resource |
| [aws_appautoscaling_scheduled_action.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_scheduled_action) | resource |
| [aws_appautoscaling_target.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_target) | resource |
| [aws_iam_role.ecs_autoscale](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.ecs_autoscale](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Name of the ECS cluster | `string` | n/a | yes |
| <a name="input_disable_scale_in"></a> [disable\_scale\_in](#input\_disable\_scale\_in) | Whether to disable scale-in | `bool` | `false` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Controls if resources should be created | `bool` | `true` | no |
| <a name="input_max_capacity"></a> [max\_capacity](#input\_max\_capacity) | The max capacity of the scalable target | `string` | `"2"` | no |
| <a name="input_min_capacity"></a> [min\_capacity](#input\_min\_capacity) | The min capacity of the scalable target | `string` | `"1"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for resources on AWS | `string` | n/a | yes |
| <a name="input_role_arn"></a> [role\_arn](#input\_role\_arn) | The iam\_role arn used for resources | `string` | `""` | no |
| <a name="input_scale_in_cooldown"></a> [scale\_in\_cooldown](#input\_scale\_in\_cooldown) | The amount of time, in seconds, after a scale in activity completes before another scale in activity can start. | `string` | `"300"` | no |
| <a name="input_scale_out_cooldown"></a> [scale\_out\_cooldown](#input\_scale\_out\_cooldown) | The amount of time, in seconds, after a scale out activity completes before another scale out activity can start | `string` | `"60"` | no |
| <a name="input_schedules"></a> [schedules](#input\_schedules) | Schedule for scaling the target. Schedule: at(yyyy-mm-ddThh:mm:ss) | `list(map(string))` | `[]` | no |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Name of the ECS service | `string` | n/a | yes |
| <a name="input_target_cpu"></a> [target\_cpu](#input\_target\_cpu) | Threshold for max CPU usage | `string` | `"70"` | no |
| <a name="input_target_mem"></a> [target\_mem](#input\_target\_mem) | Threshold for max Mem usage | `string` | `"90"` | no |
| <a name="input_timezone"></a> [timezone](#input\_timezone) | The time zone used when setting a scheduled action by using an at or cron expression. | `string` | `"UTC"` | no |
| <a name="input_tracking_cpu"></a> [tracking\_cpu](#input\_tracking\_cpu) | Whether to track cpu | `bool` | `true` | no |
| <a name="input_tracking_mem"></a> [tracking\_mem](#input\_tracking\_mem) | Whether to track mem | `bool` | `true` | no |

## Outputs

No outputs.
