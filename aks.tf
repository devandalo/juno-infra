resource "azurerm_kubernetes_cluster" "juno" {
  name                          = "${var.project}-${var.env}-aks"
  location                      = azurerm_resource_group.juno.location
  resource_group_name           = azurerm_resource_group.juno.name
  dns_prefix                    = var.prefix
  kubernetes_version            = var.kubernetes_version
  tags                          = local.tags
  sku_tier                      = var.sku_tier
  oidc_issuer_enabled           = true
  workload_identity_enabled     = true
  local_account_disabled        = true
  enable_azure_active_directory = true
  rbac_aad_managed              = true

  default_node_pool {
    name                = "juno"
    enable_auto_scaling = true
    vm_size             = "Standard_D2_v2"
    min_count           = 1
    max_count           = 4
  }

  identity {
    type = "SystemAssigned"
  }
}


