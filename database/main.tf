module "database_instance" {
  source              = "github.com/aviseu/terraform//modules/gcp_cloud_sql_instance"
  project_id          = "aviseu-jobs"
  region              = "europe-west4"
  instance_name       = "jobs-db"
  database_version    = "POSTGRES_17"
  tier                = "db-f1-micro"
  disk_size           = 10
  max_connections     = 100
  deletion_protection = var.deletion_protection
}
