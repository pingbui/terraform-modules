output "organizations_account_id" {
  description = "The AWS account id"
  value       = aws_organizations_account.this.id
}

output "organizations_account_arn" {
  description = "The ARN for this account"
  value       = aws_organizations_account.this.arn
}
