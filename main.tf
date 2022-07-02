terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
    google = {
      source = "hashicorp/google"
      version = "4.27.0"
    }
  }
  cloud {
    organization = "zuedev"

    workspaces {
      name = "terraform"
    }
  }
}