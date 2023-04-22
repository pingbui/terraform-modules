variable "create" {
  type        = bool
  default     = true
  description = "Whether to create resources."
}

variable "name" {
  type = string
}

variable "availability_zone" {
  type = string
}

variable "blueprint_id" {
  type    = string
  default = "mysql_8_0"
}

variable "bundle_id" {
  type    = string
  default = "nano_1_0"
}

variable "engine_version" {
  type    = string
  default = "8.0.23"
}

variable "master_database_name" {
  type = string
}

variable "master_username" {
  type    = string
  default = null
}

variable "master_password" {
  type      = string
  default   = null
  sensitive = true
}

variable "random_password_length" {
  type    = number
  default = 20
}

variable "preferred_backup_window" {
  type    = string
  default = null
}

variable "preferred_maintenance_window" {
  type    = string
  default = null
}

variable "publicly_accessible" {
  type    = bool
  default = false
}
