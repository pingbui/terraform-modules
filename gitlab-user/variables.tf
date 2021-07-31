variable "gitlab_token" {
  description = "The Token of Gitlab"
  type        = string
}

variable "gitlab_url" {
  description = "The URL of Gitlab API"
  type        = string
  default     = "https://git.hblab.vn/api/v4/"
}

variable "name" {
  description = "(Required) The name of the user."
  type        = string
}

variable "username" {
  description = "(Required) The username of the user."
  type        = string
}

variable "email" {
  description = "(Required) The email of the user."
  type        = string
}

variable "password" {
  description = "(Optional) The email of the user."
  type        = string
  default     = null
}

variable "is_admin" {
  description = "(Optional) Boolean, defaults to false. Whether to enable administrative priviledges for the user."
  type        = bool
  default     = false
}

variable "projects_limit" {
  description = "(Optional) Integer, defaults to 0. Number of projects user can create."
  type        = number
  default     = 0
}

variable "can_create_group" {
  description = "(Optional) Boolean, defaults to false. Whether to allow the user to create groups."
  type        = bool
  default     = false
}

variable "skip_confirmation" {
  description = "(Optional) Boolean, defaults to true. Whether to skip confirmation."
  type        = bool
  default     = true
}

variable "is_external" {
  description = "(Optional) Boolean, defaults to false. Whether a user has access only to some internal or private projects"
  type        = bool
  default     = false
}

variable "reset_password" {
  description = "(Optional) Boolean, defaults to true. Send user password reset link."
  type        = bool
  default     = true
}