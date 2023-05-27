resource "aws_codestarconnections_connection" "this" {
  name          = var.codestarconnections_name
  provider_type = var.codestarconnections_provider
}
