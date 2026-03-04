terraform {
  required_providers {
    ionoscloud = {
      source  = "ionos-cloud/ionoscloud"
      version = "~> 1.23.0"
    }
  }
}

provider "ionoscloud" {
  token = var.ionos_token
}

variable "ionos_token" {
  type        = string
  description = "IONOS Cloud API token"
  sensitive   = true
}
