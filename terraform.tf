terraform {
  required_version = ">= 1.4.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.47.0"
    }
    random = "~> 3.4.3"
  }

  backend "azurerm" {
    resource_group_name  = "hb-tfstate-rg"
    storage_account_name = "hbtfstatestacc"
    container_name       = "hb-tfstate-container"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  use_oidc = true
  features {}
}