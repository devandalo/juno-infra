terraform {
  required_version = ">= 1.5.2"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.64.0"
    }
    random = "~> 3.4.3"
  }

  backend "azurerm" {
    resource_group_name  = "juno-tfstate-rg"
    storage_account_name = "junotfstateacc"
    container_name       = "juno-tfstate-container"
    key                  = "juno-infra.tfstate"
  }
}

provider "azurerm" {
  use_oidc = true
  features {}
}
