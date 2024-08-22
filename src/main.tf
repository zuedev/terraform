terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.116.0"
    }
  }

  cloud {
    organization = "zuedev"

    workspaces {
      name = "github-com_zuedev_terraform"
    }
  }
}
