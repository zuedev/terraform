terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.116.0"
    }
  }
}

variable "azure_client_secret" {
  type      = string
  sensitive = true
}

provider "azurerm" {
  tenant_id     = "ab31a38f-3d03-4dbd-be8c-03a48c54e845"
  client_id     = "d56ed96c-0c52-44c0-b117-2d137b4757ad"
  client_secret = var.azure_client_secret

  features {}
}

data "azurerm_resource_group" "terraform_uk_south" {
  name = "zuedev_uk-south_terraform"
}
