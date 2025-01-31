output "public_keys" {
  description = "A map of public keys"
  value       = zipmap(var.names, try(tls_private_key.ssh[*].public_key_openssh, []))
}

output "private_keys" {
  description = "A map of private keys"
  value       = zipmap(var.names, try(tls_private_key.ssh[*].private_key_pem, []))
  sensitive   = true
}

output "key_names" {
  description = "The key pair name."
  value       = try(aws_key_pair.this[*].key_name, [])
}

output "key_pair_ids" {
  description = "The key pair ID."
  value       = try(aws_key_pair.this[*].key_pair_id, [])
}

output "fingerprints" {
  description = "The MD5 public key fingerprint as specified in section 4 of RFC 4716."
  value       = try(aws_key_pair.this[*].fingerprint, [])
}
