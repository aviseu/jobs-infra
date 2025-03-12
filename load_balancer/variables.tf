variable "project_id" {
  description = "The Google Cloud project ID"
  type        = string
}

variable "region" {
  description = "The region to deploy the load balancer"
  type        = string
  default     = "europe-west4"
}

variable "frontend_backend" {
  description = "The backend for the frontend service"
  type        = string
  default     = "https://www.googleapis.com/compute/v1/projects/aviseu-jobs/regions/europe-west4/backendServices/backoffice-frontend-backend"
}

variable "api_backend" {
  description = "The backend for the api service"
  type        = string
  default     = "https://www.googleapis.com/compute/v1/projects/aviseu-jobs/regions/europe-west4/backendServices/backoffice-api-backend"
}
