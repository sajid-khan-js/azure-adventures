terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.19"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.27"
    }
  }
}

provider "azurerm" {
  features {}
  // https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs#argument-reference
}

provider "azuread" {
  // https://registry.terraform.io/providers/hashicorp/azuread/latest/docs#argument-reference
}
