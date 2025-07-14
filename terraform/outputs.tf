output "subscription_id" {
  value = module.subscription.subscription_id
}

output "role_assignment_id" {
  value = module.rbac.role_assignment_id
}

output "vnet_id" {
  value = module.vnet.vnet_id
}

output "peering_id" {
  value = module.peering.peering_id
}
