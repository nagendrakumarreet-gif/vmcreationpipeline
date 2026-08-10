terraform{
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
   version = "4.81.0"
    }
  }
# backend "azurerm" {
#     resource_group_name  = "rg-preproduction"
#     storage_account_name = "indiastoragegreat"
#     container_name       = "web-cook-storage"
#     key                  = "tfstate_vmfinal"
#   }
}

provider "azurerm" {
  features {}
}