locals {
  name = coalesce(var.custom_name, var.name)
}
resource "aws_wafv2_ip_set" "this" {
  name               = local.name
  description        = var.description
  scope              = var.scope
  ip_address_version = var.ip_address_version
  addresses          = var.addresses
  tags               = var.tags
}