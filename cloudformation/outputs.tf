output "name" {
  value       = join("", aws_cloudformation_stack.this.*.name)
  description = "Name of the CloudFormation Stack"
}

output "id" {
  value       = join("", aws_cloudformation_stack.this.*.id)
  description = "ID of the CloudFormation Stack"
}

output "outputs" {
  value       = var.enabled ? aws_cloudformation_stack.this[0].outputs : {}
  description = "Outputs of the CloudFormation Stack"
}
