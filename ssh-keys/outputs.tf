output "public_keys" {
  description = "A map of public keys"
  value       = zipmap(var.names, tls_private_key.ssh.*.public_key_openssh)
}