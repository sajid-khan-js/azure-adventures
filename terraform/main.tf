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

resource "azurerm_resource_group" "this" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_virtual_network" "this" {
  name                = "example-network"
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  address_space       = ["10.0.0.0/16"]
}


provider "azuread" {
  // https://registry.terraform.io/providers/hashicorp/azuread/latest/docs#argument-reference
}

// Retrieve domain information
data "azuread_domains" "this" {
  only_initial = true
}

resource "azuread_application" "this" {
  display_name = "ExampleApp"
}

resource "azuread_service_principal" "this" {
  application_id = azuread_application.this.application_id
}

resource "azuread_user" "this" {
  user_principal_name = "ExampleUser@${data.azuread_domains.this.domains.0.domain_name}"
  display_name        = "Example User"
  password            = "SuperStrongPassword123!" // Please don't input passwords/secrets like this, use Mozilla SOPS
}
