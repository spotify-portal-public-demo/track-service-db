terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.30.0"
    }
  }

  backend "gcs" {
    bucket = "spotify-portal-public-demo-terraform"
    prefix = "track-service-db"
  }
}

provider "google" {
  project = "spotify-portal-public-demo"
  region  = "europe-west1"
}

resource "google_sql_database_instance" "track-service-db" {
  name = "track-service-db"

  database_version = "POSTGRES_17"
  root_password    = var.db_password

  settings {
    edition = "ENTERPRISE"
    tier    = "db-f1-micro"
  }

  deletion_protection = true
}
