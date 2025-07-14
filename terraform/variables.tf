variable "subscription_name" {
  description = "The name of the subscription."
  type        = string
}

variable "billing_scope_id" {
  description = "The billing scope ID for the subscription."
  type        = string
}

variable "scope" {
  description = "The scope for the role assignment."
  type        = string
}

variable "role_definition_name" {
  description = "The name of the role definition."
  type        = string
}

variable "principal_id" {
  description = "The principal ID for the role assignment."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The location for the resources."
  type        = string
}

variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
}

variable "address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
}

variable "peering_name" {
  description = "The name of the virtual network peering."
  type        = string
}

variable "remote_vnet_id" {
  description = "The ID of the remote virtual network."
  type        = string
}
