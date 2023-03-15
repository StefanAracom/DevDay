# Terraform Cloud Backend to store the state remotely
terraform {
  cloud {
    organization = "dev-day-k8s"

    workspaces {
      name = "dev-day"
    }
  }
}