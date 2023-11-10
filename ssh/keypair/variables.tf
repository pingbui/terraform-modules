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

variable "tags" {
  description = "A map of tags to add to key pair resource."
  type        = map(string)
  default     = {}
}
