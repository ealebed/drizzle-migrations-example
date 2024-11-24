terraform {
  required_version = ">= 1.9.5"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.2"
    }
  }
}

provider "google" {
  credentials = file("../credentials.json")

  project     = var.gcp_project
  region      = var.gcp_region
  zone        = var.gcp_zone
}

data "google_project" "project" {}
