output "public_keys" {
  description = "A map of public keys"
  value       = { for k, v in tls_private_key.ssh : k => v.public_key_openssh }
}

output "private_keys" {
  description = "A map of private keys"
  value       = { for k, v in tls_private_key.ssh : k => v.private_key_pem }
  sensitive   = true
}

output "key_names" {
  description = "The list of key pair names"
  value       = var.names
}

output "aws_key_pairs" {
  description = "The key pairs"
  value       = aws_key_pair.this
}
