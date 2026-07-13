variable "this"{}
resource "azurerm_resource_group" "this" {
     for_each = var.this
    name = each.value.name
    location= each.value.location 
}