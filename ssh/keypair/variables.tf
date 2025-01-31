variable "create_key_pair" {
  description = "Controls if key pair should be created"
  type        = bool
  default     = true
}

variable "names" {
  description = "A name list of ssh keys"
  type        = list(string)
  default     = ["bastion"]
}

variable "key_name_prefix" {
  description = "Creates a unique name beginning with the specified prefix. Conflicts with key_name."
  type        = string
  default     = null
}

variable "algorithm" {
  description = "The encrypt algorithm"
  type        = string
  default     = "RSA"
}

variable "rsa_bits" {
  description = "RSA bits for keys"
  type        = number
  default     = 2048
}

variable "save_dir" {
  description = "The dir to save ssh private keys to"
  type        = string
  default     = "."
}

variable "save_file" {
  description = "Whether to save file to local."
  type        = bool
  default     = true
}

variable "save_ssm" {
  description = "Whether to save file to SSM Param."
  type        = bool
  default     = true
}

variable "key_id" {
  description = "KMS key ID or ARN for encrypting a parameter (when type is SecureString)"
  type        = string
  default     = "alias/aws/ssm"
}

variable "tags" {
  description = "A map of tags to add to key pair resource."
  type        = map(string)
  default     = {}
}
