provider "azurerm" {
   features {}
   subscription_id = "my_subscription_id"
   client_id       = "my_client_id"
   tenant_id       = "my_tenat_id"
   client_secret   = "my_client_secret"
}

resource "azurerm_resource_group" "my_rg" {
  name     = "myResourceGroup"
  location = "West Europe"
}

resource "azurerm_storage_account" "my_tfasc" {
  name                     = "terraformasc"
  resource_group_name      = azurerm_resource_group.my_rg.name
  location                 = azurerm_resource_group.my_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}