terraform {
  required_version = ">= 1.11.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 6.30.0"
    }
  }
}

provider "google" {
  project         = "aviseu-jobs"
  region          = "europe-west4"
  request_timeout = "60s"
}

