output "resource_group_name" {
    description = "Nom du RG"
    value = azurerm_resource_group.rg.name
}

output "resource_group_location" {
    description = "Localisation du RG"
    value = azurerm_resource_group.rg.location
}