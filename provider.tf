# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.32.0"
    }
  }

 backend "azurerm" {
        resource_group_name  = "sunilterraformrg"
        storage_account_name = "sunilterraformstorage"
        container_name       = "sunilterraformcontainer"
        key                  = "octopus-terraform.tfstate"
    }
 

  required_version = ">= 1.10.0"
}

provider "azurerm" {
  features {}
}