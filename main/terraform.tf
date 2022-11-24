##################################################################################
# TERRAFORM CONFIG
##################################################################################
/*
terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "~> 2.0"
        }
    }
    backend "azurerm" {
        key = "app.terraform.tfstate"
    }
}
*/



######## updating the provider to 0.13+
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.32.0"
    }
  }
}

terraform {
  backend "azurerm" {
    key = "app.terraform.tfstate"
  }
}



##################################################################################
# PROVIDERS
##################################################################################

provider "azurerm" {
  features {}
}