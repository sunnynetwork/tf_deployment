# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.32.0"
    }
  }

 backend "azurerm" {
        resource_group_name  = "myterraformrg"
        storage_account_name = "terraformstoragesjakhwal"
        container_name       = "terraformstate"
        key                  = "terraform.tfstate"
    }
 

  required_version = "1.11.2"
}

provider "azurerm" {
  features {}
}