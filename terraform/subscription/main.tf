resource "azurerm_subscription" "example" {
  subscription_name = var.subscription_name
  billing_scope_id  = var.billing_scope_id
}
