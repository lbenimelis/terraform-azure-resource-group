
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
  tags     = merge({ "Name" = format("%s", var.resource_group_name) }, var.tags, )
}


#-------------------------------------
# Lock - Default is "true"
#-------------------------------------


resource "azurerm_management_lock" "Lock_rg" {
count    = var.create_management_lock != false ? 1 : 0
  name       = "Lock-${var.namerg}"
  scope      = azurerm_resource_group.rg.id
  lock_level = "CanNotDelete"
  notes      = "This Resource Group can't be Deleted"
}

