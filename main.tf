### Création du ressource group HUB ###
resource "azurerm_resource_group" "rg" {
  name     = "${var.namerg}-rg"
  location = var.location

  tags = {
    environment = var.env
  }
}



