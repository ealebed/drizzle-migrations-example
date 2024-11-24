resource "google_cloudbuild_trigger" "default" {
  location = "global"
  
  // If this is set on a build, it will become pending when it is run, 
  // and will need to be explicitly approved to start.
  approval_config {
     approval_required = true 
  }

  include_build_logs = "INCLUDE_BUILD_LOGS_WITH_STATUS"
  name               = "test-drizzle-migrations"
  filename           = "cloudbuild.yaml"

  github {
    owner  = var.github.organization
    name   = var.github.repo
    push {
      branch = "^master$"
    }
  }
}
