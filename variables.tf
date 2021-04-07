variable "resource_group_name" {
  description = "resource_group_name"
}

variable "location" {
  description = "location"
}

variable "create_management_lock" {
  description = "Controls if create lock for RG"
  default     = true
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}
