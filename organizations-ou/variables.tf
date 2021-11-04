variable "name" {
  description = "A friendly name for the OU."
  type        = string
}

variable "parent_id" {
  description = "ID of the parent organizational unit, which may be the root."
  type        = string
}

variable "tags" {
  description = "Key-value map of resource tags."
  type        = map(string)
  default     = {}
}