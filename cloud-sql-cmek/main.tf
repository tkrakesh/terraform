# To create a service account
resource "google_project_service_identity" "gcp_sa_cloud_sql" {
  provider = google-beta
  service  = "sqladmin.googleapis.com"
}

# To create a key ring
resource "google_kms_key_ring" "keyring" {
  name     = "keyring-name"
  location = "us-central1"
}

# To create a key
resource "google_kms_crypto_key" "key" {
  name     = "crypto-key-name"
  key_ring = google_kms_key_ring.keyring.id
  purpose  = "ENCRYPT_DECRYPT"
}

# To grant the service account access to the key
resource "google_kms_crypto_key_iam_binding" "crypto_key" {
  crypto_key_id = google_kms_crypto_key.key.id
  role          = "roles/cloudkms.cryptoKeyEncrypterDecrypter"

  members = [
    "serviceAccount:${google_project_service_identity.gcp_sa_cloud_sql.email}",
  ]
}

# To create a cloud Sql instance with CMEK
resource "google_sql_database_instance" "mysql_instance_with_cmek" {
  name                = "mysql-instance-cmek"
  provider            = google-beta
  region              = "us-central1"
  database_version    = "MYSQL_8_0"
  encryption_key_name = google_kms_crypto_key.key.id
  settings {
    tier = "db-f1-micro"
  }
  deletion_protection =  "true"
}
