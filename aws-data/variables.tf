variable "use_default" {
  description = "Whether to use default amis"
  type        = bool
  default     = true
}
variable "aws_amis" {
  description = "A map of AMIs will be used"
  type        = map(any)
  default     = {}
}
