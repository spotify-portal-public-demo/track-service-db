output "cloud_sql_name" {
  value       = google_sql_database_instance.track-service-db.name
  description = "Cloud SQL Name"
}

output "cloud_sql_public_ip" {
  value       = google_sql_database_instance.track-service-db.public_ip_address
  description = "Cloud SQL Public IP"
}
