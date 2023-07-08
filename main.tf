# ----------------------------------
# Resource Group
# ----------------------------------
resource "azurerm_resource_group" "hb" {
  name     = "${var.project}-${var.env}-rg"
  tags     = local.tags
  location = local.tags.location
}
