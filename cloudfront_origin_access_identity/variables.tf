variable "create_origin_access_identity" {
  description = "Controls if CloudFront origin access identity should be created"
  type        = bool
  default     = true
}

variable "origin_access_identities" {
  description = "Map of CloudFront origin access identities (value as a comment)"
  type        = map(string)
  default     = {}
}

variable "s3_origin_bucket" {
  description = "The name of s3 bucket need to be added bucket policy."
  type        = string
  default     = ""
}