variable "codestarconnections_name" {
  description = "The unique name of the connection to be created"
  type        = string
  default     = "Managed-CachingDisabled"
}

variable "codestarconnections_provider" {
  description = "The name of the external provider where your third-party code repository is configured. Valid values are Bitbucket, GitHub or GitHubEnterpriseServer"
  type        = string
  default     = "Github"
}