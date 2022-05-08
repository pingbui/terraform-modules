variable "names" {
  description = "A name list of ssh keys"
  type        = list(string)
  default     = ["bastion"]
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