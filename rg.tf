# ----------------------------------
# Resource Group
# ----------------------------------
resource "azurerm_resource_group" "juno" {
  name     = "${var.project}-${var.env}-rg"
  tags     = local.tags
  location = local.tags.location
}
