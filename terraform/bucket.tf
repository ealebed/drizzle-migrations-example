resource "google_storage_bucket" "default" {
  name          = "${var.gcp_project}-drizzle-tfstate"
  force_destroy = false
  location      = var.gcp_region
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}
