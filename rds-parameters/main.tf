resource "aws_rds_cluster_parameter_group" "this" {
  count       = var.create_cluster_parameter ? 1 : 0
  name        = var.name
  description = "DB cluster parameter group"
  family      = var.family

  dynamic "parameter" {
    for_each = var.cluster_parameters
    content {
      apply_method = lookup(parameter.value, "apply_method", null)
      name         = parameter.value.name
      value        = parameter.value.value
    }
  }

  tags = var.tags
}

resource "aws_db_parameter_group" "this" {
  count       = var.create_db_parameter ? 1 : 0
  name        = var.name
  description = "DB instance parameter group"
  family      = var.family

  dynamic "parameter" {
    for_each = var.instance_parameters
    content {
      apply_method = lookup(parameter.value, "apply_method", null)
      name         = parameter.value.name
      value        = parameter.value.value
    }
  }

  tags = var.tags
}