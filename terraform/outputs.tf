# Drizzle connection URL
output "sql_conn_url" {
  sensitive = true
  value     = "postgres://${google_sql_user.drizzle.name}:${google_sql_user.drizzle.password}@${google_sql_database_instance.main.public_ip_address}:5432/${google_sql_database.database_01.name}"
}
