module "subscription" {
  source = "./subscription"

  subscription_name = var.subscription_name
  billing_scope_id  = var.billing_scope_id
}

module "rbac" {
  source = "./rbac"

  scope                = var.scope
  role_definition_name = var.role_definition_name
  principal_id         = var.principal_id
}

module "vnet" {
  source = "./vnet"

  resource_group_name = var.resource_group_name
  location            = var.location
  vnet_name           = var.vnet_name
  address_space       = var.address_space
}

module "peering" {
  source = "./peering"

  peering_name          = var.peering_name
  resource_group_name   = var.resource_group_name
  vnet_name             = var.vnet_name
  remote_vnet_id        = var.remote_vnet_id
}
