output "ecs_autoscale_iam_role_arn" {
  description = "Amazon Resource Name (ARN) of the autoscale role"
  value       = aws_iam_role.ecs_autoscale.arn
}

output "appautoscaling_policy_cpu_arn" {
  description = "The ARN assigned by AWS to the cpu scaling policy"
  value       = join("", aws_appautoscaling_policy.cpu.*.arn)
}

output "appautoscaling_policy_mem_arn" {
  description = "The ARN assigned by AWS to the mem scaling policy"
  value       = join("", aws_appautoscaling_policy.mem.*.arn)
}

output "schedules" {
  description = "The ARNs of the scheduled action"
  value       = aws_appautoscaling_scheduled_action.this.*.arn
}