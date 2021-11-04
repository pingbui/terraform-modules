output "id" {
  description = "The unique id assigned to the user by the GitLab server."
  value       = gitlab_user.this.id
}