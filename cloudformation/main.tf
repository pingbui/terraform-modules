resource "aws_cloudformation_stack" "this" {
  count = var.enabled ? 1 : 0
  name  = var.name
  tags  = var.tags

  template_body      = var.template_body == "" ? null : var.template_body
  template_url       = var.template_body == "" ? var.template_url : null
  parameters         = var.parameters
  capabilities       = var.capabilities
  on_failure         = var.on_failure
  timeout_in_minutes = var.timeout_in_minutes
  policy_body        = var.policy_body
}
