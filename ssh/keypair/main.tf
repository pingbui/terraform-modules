provider "tls" {}

resource "tls_private_key" "ssh" {
  for_each  = var.create_key_pair ? toset(var.names) : []
  algorithm = var.algorithm
  rsa_bits  = var.rsa_bits
}

resource "local_file" "private" {
  for_each        = var.create_key_pair && var.save_file ? toset(var.names) : []
  content         = try(tls_private_key.ssh[each.value].private_key_pem, "")
  filename        = "${var.save_dir}/${each.value}"
  file_permission = "0600"
}

resource "aws_key_pair" "this" {
  for_each = var.create_key_pair ? toset(var.names) : []

  key_name        = each.value
  key_name_prefix = var.key_name_prefix
  public_key      = try(tls_private_key.ssh[each.value].public_key_openssh, "")

  tags = var.tags
}

resource "aws_ssm_parameter" "this" {
  for_each = var.create_key_pair && var.save_ssm ? toset(var.names) : []

  name        = each.value
  type        = "SecureString"
  description = "SSH private key ${each.value}"

  value     = try(tls_private_key.ssh[each.value].private_key_pem, "")
  key_id    = var.key_id
  data_type = "text"
  tags      = var.tags
}
