locals {
  api_backend = "https://www.googleapis.com/compute/v1/projects/aviseu-jobs/regions/europe-west4/backendServices/backoffice-api-backend"
  frontend_backend = "https://www.googleapis.com/compute/v1/projects/aviseu-jobs/regions/europe-west4/backendServices/backoffice-frontend-backend"
}

module "load_balancer" {
  source             = "github.com/aviseu/terraform//modules/load_balancer?ref=v1.1.0"
  project_id         = "aviseu-jobs"
  region             = "europe-west4"
  load_balancer_name = "jobs-lb"
  address_name       = "public-ip"
  default_backend    = "frontend"

  backends = {
    "frontend" : local.frontend_backend,
    "api" : local.api_backend
  }

  routes = {
    jobs-backoffice-viseu-me : {
      domain : "jobs-backoffice.viseu.me"
      certificate : "viseu-me-cloudflare-origin"
      paths : {
        "/" : "frontend",
        "/api/*" : "api"
      }
    }
  }
}
