variable "cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

variable "vpc_name" {
  type    = string
  default = "default"
}

variable "private_subnet_name" {
  type    = string
  default = "*private*"
}
variable "public_subnet_name" {
  type    = string
  default = "*public*"
}
