variable "name" {
  description = "A friendly name for the member account."
  type        = string
}

variable "email" {
  description = "The email address of the owner to assign to the new member account. This email address must not already be associated with another AWS account."
  type        = string
}

variable "iam_user_access_to_billing" {
  description = "Whether allow IAM users to access account billing information. 'ALLOW' or 'DENY'"
  type        = string
  default     = "ALLOW"
}

variable "parent_id" {
  description = "Parent Organizational Unit ID or Root ID for the account."
  type        = string
  default     = null
}

variable "role_name" {
  description = "The name of an IAM role that Organizations automatically preconfigures in the new member account."
  type        = string
  default     = null
}

variable "tags" {
  description = "Key-value map of resource tags."
  type        = map(string)
  default     = {}
}