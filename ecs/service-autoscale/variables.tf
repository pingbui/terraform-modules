variable "enabled" {
  description = "Controls if resources should be created"
  type        = bool
  default     = true
}

variable "name" {
  description = "Name for resources on AWS"
  type        = string
}

variable "cluster_name" {
  description = "Name of the ECS cluster"
  type        = string
}

variable "service_name" {
  description = "Name of the ECS service"
  type        = string
}

variable "min_capacity" {
  description = "The min capacity of the scalable target"
  default     = "1"
  type        = string
}

variable "max_capacity" {
  description = "The max capacity of the scalable target"
  default     = "2"
  type        = string
}

variable "tracking_cpu" {
  description = "Whether to track cpu"
  default     = true
  type        = bool
}

variable "target_cpu" {
  description = "Threshold for max CPU usage"
  default     = "70"
  type        = string
}

variable "tracking_mem" {
  description = "Whether to track mem"
  default     = true
  type        = bool
}

variable "target_mem" {
  description = "Threshold for max Mem usage"
  default     = "90"
  type        = string
}

variable "disable_scale_in" {
  description = "Whether to disable scale-in"
  default     = false
  type        = bool
}

variable "scale_in_cooldown" {
  description = "The amount of time, in seconds, after a scale in activity completes before another scale in activity can start."
  default     = "300"
  type        = string
}

variable "scale_out_cooldown" {
  description = "The amount of time, in seconds, after a scale out activity completes before another scale out activity can start"
  default     = "60"
  type        = string
}

variable "schedules" {
  description = "Schedule for scaling the target. Schedule: at(yyyy-mm-ddThh:mm:ss)"
  type        = list(map(string))
  default     = []
}

variable "timezone" {
  description = "The time zone used when setting a scheduled action by using an at or cron expression."
  type        = string
  default     = "UTC"
}