output "id" {
  value       = aws_lightsail_database.this.id
  description = "The ARN of the Lightsail instance."
}

output "master_password" {
  value       = local.master_password
  description = "The password of the db."
  sensitive   = true
}
