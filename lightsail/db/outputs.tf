output "id" {
  value       = try(aws_lightsail_database.this[0].id, "")
  description = "The ARN of the Lightsail instance."
}

output "master_password" {
  value       = local.master_password
  description = "The password of the db."
  sensitive   = true
}
