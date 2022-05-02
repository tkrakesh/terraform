resource "google_sql_database_instance" "main" {
  name             = "main-instance"
  database_version = "POSTGRES_11"
  region           = "us-central1"

  settings {
    # Second-generation instance tiers are based on the machine
    # type. See argument reference below.
    tier = "db-f1-micro"
  backup_configuration {
      enabled = true
      start_time = "04:30"
    }
}
}
