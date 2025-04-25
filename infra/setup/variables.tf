variable "tf_state_bucket" {
  description = "Name of S3 Bucket in AWS for storing Terraform state"
  default     = "kristofer-devops-app-tf-state"
}

variable "tf_state_lock_table" {
  description = "Name of DynamoDB table for TF state locking"
  default     = "kristofer-devops-tf-lock"
}

variable "project" {
  description = "Project name for tagging resources"
  default     = "kristofer-devops-app"

}

variable "contact" {
  description = "Contact info for who is running these resources"
  default     = "kharrison@avfx.com"
}
