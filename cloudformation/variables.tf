variable "enabled" {
  type        = bool
  description = "Whether to create the stack"
  default     = true
}

variable "name" {
  type        = string
  description = "The Stack name"
}

variable "template_body" {
  type        = string
  description = "Structure containing the template body (max size: 51,200 bytes)"
  default     = ""
}

variable "template_url" {
  type        = string
  description = "Amazon S3 bucket URL location of a file containing the CloudFormation template body. Maximum file size: 460,800 bytes"
  default     = null
}

variable "parameters" {
  type        = map(string)
  description = "Key-value map of input parameters for the Stack Set template. (_e.g._ map(\"BusinessUnit\",\"ABC\")"
  default     = {}
}

variable "capabilities" {
  type        = list(string)
  description = "A list of capabilities. Valid values: CAPABILITY_IAM, CAPABILITY_NAMED_IAM, CAPABILITY_AUTO_EXPAND"
  default     = ["CAPABILITY_IAM"]
}

variable "on_failure" {
  type        = string
  default     = "ROLLBACK"
  description = "Action to be taken if stack creation fails. This must be one of: `DO_NOTHING`, `ROLLBACK`, or `DELETE`"
}

variable "timeout_in_minutes" {
  type        = number
  default     = 30
  description = "The amount of time that can pass before the stack status becomes `CREATE_FAILED`"
}

variable "policy_body" {
  type        = string
  default     = ""
  description = "Structure containing the stack policy body"
}

variable "tags" {
  type        = map(string)
  description = "Map of resource tags to associate with this stack"
  default     = {}
}
