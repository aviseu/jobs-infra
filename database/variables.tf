variable "project_id" {
  description = "The Google Cloud project ID"
  type        = string
}

variable "region" {
  description = "The region to deploy the database"
  type        = string
  default     = "europe-west4"
}

variable "deletion_protection" {
  description = "Enable deletion protection"
  type        = bool
  default     = false
}
