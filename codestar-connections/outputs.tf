output "connection_id" {
  description = "The identifier for the cache policy."
  value       = aws_codestarconnections_connection.this.id
}

output "connection_arn" {
  description = "The identifier for the origin request policy."
  value       = aws_codestarconnections_connection.this.name
}

output "connection_status" {
  description = "The identifier for the origin response headers policy."
  value       = aws_codestarconnections_connection.this.connection_status
}