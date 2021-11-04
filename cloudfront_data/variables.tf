variable "cache_policy_name" {
  description = "A unique name to identify the cache policy."
  type        = string
  default     = "Managed-CachingDisabled"
}

variable "request_policy_name" {
  description = "Unique name to identify the origin request policy."
  type        = string
  default     = "Managed-AllViewer"
}