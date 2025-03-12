module "load_balancer" {
  source             = "github.com/aviseu/terraform//modules/load_balancer?ref=v1.0.0"
  project_id         = var.project_id
  region             = var.region
  load_balancer_name = "jobs-lb"
  address_name       = "public-ip"
  default_backend    = "frontend"

  backends = {
    "frontend" : var.frontend_backend,
    "api" : var.api_backend
  }

  routes = {
    jobs-backoffice-viseu-me : {
      domain : "jobs-backoffice.viseu.me"
      certificate : "viseu-me-cloudflare-origin"
      paths : {
        "/" : var.frontend_backend,
        "/api/*" : var.api_backend
      }
    }
  }
}
