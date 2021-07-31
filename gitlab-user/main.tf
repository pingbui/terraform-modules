provider "gitlab" {
  token    = var.gitlab_token
  base_url = var.gitlab_url
}

resource "gitlab_user" "this" {
  name             = var.name
  username         = var.username
  password         = var.password
  email            = var.email
  is_admin         = var.is_admin
  projects_limit   = var.projects_limit
  can_create_group = var.can_create_group
  is_external      = var.is_external
  reset_password   = var.reset_password
}