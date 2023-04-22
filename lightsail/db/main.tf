locals {
  master_password = var.master_password == null ? random_password.master_password[0].result : var.master_password
}
resource "aws_lightsail_database" "this" {
  count                        = var.create ? 1 : 0
  name                         = var.name
  availability_zone            = var.availability_zone
  blueprint_id                 = var.blueprint_id
  bundle_id                    = var.bundle_id
  engine_version               = var.engine_version
  master_username              = var.master_username
  master_password              = local.master_password
  master_database_name         = var.master_database_name
  preferred_backup_window      = var.preferred_backup_window
  preferred_maintenance_window = var.preferred_maintenance_window
  publicly_accessible          = var.publicly_accessible
}

resource "random_password" "master_password" {
  count = var.create && var.master_password == null ? 1 : 0

  length  = var.random_password_length
  special = false
}
