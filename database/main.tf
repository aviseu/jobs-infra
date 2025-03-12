module "database_instance" {
  source              = "github.com/aviseu/terraform//modules/cloud_sql_instance?ref=v1.0.0"
  project_id          = var.project_id
  region              = var.region
  instance_name       = "jobs-db"
  database_version    = "POSTGRES_17"
  tier                = "db-f1-micro"
  disk_size           = 10
  deletion_protection = var.deletion_protection
}
