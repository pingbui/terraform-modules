resource "aws_cloudwatch_log_group" "this" {
  name = var.name
  tags = var.tags

  retention_in_days = var.retention_in_days
}

variable "name" {
  description = "The name of the log group."
  type        = string
}

variable "retention_in_days" {
  description = "Specifies the number of days you want to retain log events in the specified log group. Possible values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1827, and 3653."
  type        = string
  default     = "60"
}

variable "tags" {
  description = "A map of tags to assign to the log group."
  type        = map(string)
  default     = {}
}

output "log_group_arn" {
  description = "The ARN of the CloudWatch Log Goup"
  value       = aws_cloudwatch_log_group.this.arn
}