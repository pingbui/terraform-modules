provider "tls" {}

resource "tls_private_key" "ssh" {
  count     = length(var.names)
  algorithm = "RSA"
  rsa_bits  = var.rsa_bits
}

resource "local_file" "private" {
  count           = length(var.names)
  content         = tls_private_key.ssh.*.private_key_pem[count.index]
  filename        = "${var.save_dir}/${var.names[count.index]}"
  file_permission = "0600"
}