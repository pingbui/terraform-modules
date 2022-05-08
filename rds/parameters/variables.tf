variable "name" {
  description = "The parameter name."
  type        = string
}

variable "family" {
  description = "The family of the DB cluster parameter group."
  type        = string
}

variable "create_cluster_parameter" {
  description = "Whether to create the cluster parameters."
  type        = bool
  default     = true
}

variable "create_db_parameter" {
  description = "Whether to create the db parameters."
  type        = bool
  default     = true
}

variable "cluster_parameters" {
  description = "The list of map of cluster parameters to modify."
  type        = list(map(string))
  default     = []
}

variable "instance_parameters" {
  description = "The list of map of db parameters to modify."
  type        = list(map(string))
  default     = []
}

variable "tags" {
  description = "A map of tags to add to this endpoint."
  type        = map(string)
  default     = {}
}