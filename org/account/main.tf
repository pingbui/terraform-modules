resource "aws_organizations_account" "this" {
  name      = var.name
  email     = var.email
  role_name = var.role_name
  parent_id = var.parent_id
  tags      = var.tags

  iam_user_access_to_billing = var.iam_user_access_to_billing
}
