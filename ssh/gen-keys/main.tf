variable "ssh_keys" {
  type    = list(any)
  default = []
}

variable "key_path" {
  type    = string
  default = "."
}

resource "null_resource" "ssh_main_key" {
  for_each = toset(var.ssh_keys)

  provisioner "local-exec" {
    command = "ssh-keygen -t rsa -b 2048 -N '' -f ${var.key_path}/${each.value} -C ${each.value}@$(date +%Y%m)"
  }
}
