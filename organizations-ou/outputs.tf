output "organizations_unit_id" {
  description = "The AWS OU id"
  value       = aws_organizations_organizational_unit.this.id
}

output "organizations_unit_arn" {
  description = "The ARN for this OU"
  value       = aws_organizations_organizational_unit.this.arn
}

output "organizations_unit_accounts" {
  description = "The accounts of this OU"
  value       = aws_organizations_organizational_unit.this.accounts
}