variable "gcp_project" {
  type        = string
  description = "GCP project name"
  default     = ""
}

variable "gcp_region" {
  type        = string
  description = "GCP region name"
  default     = ""
}

variable "gcp_zone" {
  type        = string
  description = "GCP zone name"
  default     = ""
}

variable "github" {
  description = "GitHub info"
  default = {
    organization = "ealebed"
    repo         = "drizzle-migrations-example"
  }
}
