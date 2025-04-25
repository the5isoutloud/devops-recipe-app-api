variable "prefix" {
  description = "Prefix for resources in AWS"
  default     = "kda"
}

variable "project" {
  description = "Project name for tagging resources"
  default     = "kristofer-devops-app"
}

variable "contact" {
  description = "Contact email for tagging resources"
  default     = "kharrison@avfx.com"
}
