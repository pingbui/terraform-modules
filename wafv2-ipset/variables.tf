variable "name" {
  description = "A friendly name of the IP set"
  type        = string
}

variable "description" {
  description = "A friendly description of the IP set"
  type        = string
  default     = null
}

variable "scope" {
  description = "Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are CLOUDFRONT or REGIONAL"
  type        = string
  default     = "REGIONAL"
}

variable "ip_address_version" {
  description = "Specify IPV4 or IPV6. Valid values are IPV4 or IPV6"
  type        = string
  default     = "IPV4"
}

variable "addresses" {
  description = "Contains an array of strings that specify one or more IP addresses or blocks of IP addresses in Classless Inter-Domain Routing (CIDR) notation"
  type        = list(string)
}

variable "tags" {
  description = "An array of key:value pairs to associate with the resource"
  type        = map(string)
  default     = {}
}