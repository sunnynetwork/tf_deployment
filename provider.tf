# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0.2"
    }
  }

 backend "azurerm" {
        resource_group_name  = "myterraformrg"
        storage_account_name = "terraformstoragesjakhwal"
        container_name       = "terraformstate"
        key                  = "terraform.tfstate"
    }
 

  required_version = ">= 1.3.0"
}

provider "azurerm" {
  features {}
}