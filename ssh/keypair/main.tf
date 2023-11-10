provider "tls" {}

resource "tls_private_key" "ssh" {
  count     = var.create_key_pair ? length(var.names) : 0
  algorithm = "RSA"
  rsa_bits  = var.rsa_bits
}

resource "local_file" "private" {
  count           = var.create_key_pair ? length(var.names) : 0
  content         = tls_private_key.ssh[count.index].private_key_pem
  filename        = "${var.save_dir}/${var.names[count.index]}"
  file_permission = "0600"
}

resource "aws_key_pair" "this" {
  count = var.create_key_pair ? length(var.names) : 0

  key_name        = var.names[count.index]
  key_name_prefix = var.key_name_prefix
  public_key      = tls_private_key.ssh[count.index].public_key_openssh

  tags = var.tags
}
