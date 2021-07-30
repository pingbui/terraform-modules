output "organizations_organization_id" {
  description = "Identifier of the organization"
  value       = aws_organizations_organization.this.id
}

output "organizations_organization_arn" {
  description = "ARN of the organization"
  value       = aws_organizations_organization.this.arn
}
output "organizations_organization_master_account_arn" {
  description = "ARN of the master account"
  value       = aws_organizations_organization.this.master_account_arn
}

output "organizations_organization_roots" {
  description = "List of organization roots."
  value       = aws_organizations_organization.this.roots
}

output "organizations_organization_master_account_email" {
  description = "Email address of the master account"
  value       = aws_organizations_organization.this.master_account_email
}

output "organizations_organization_master_account_id" {
  description = "Identifier of the master account"
  value       = aws_organizations_organization.this.master_account_id
}
