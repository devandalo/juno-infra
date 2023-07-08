resource "azurerm_kubernetes_cluster" "example" {
  name                      = "${var.project}-${var.env}-aks"
  location                  = azurerm_resource_group.juno.location
  resource_group_name       = azurerm_resource_group.juno.name
  dns_prefix                = var.prefix
  kubernetes_version        = var.kubernetes_version
  oidc_issuer_enabled       = true
  workload_identity_enabled = true
  local_account_disabled    = true
  tags                      = local.tags
}

default_pool = {
  name       = "juno"
  node_count = 1
  max_count  = 4
  vm_size    = "Standard_D2_v2"
}
