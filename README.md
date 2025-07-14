# Azure Infrastructure Scripts

This repository contains Terraform and Bicep scripts to create Azure resources, including subscriptions, RBAC, VNets, and VNet peering.

## Terraform

### Prerequisites

- [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli) installed
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) installed and configured

### Usage

1.  Navigate to the `terraform` directory:
    ```bash
    cd terraform
    ```

2.  Initialize Terraform:
    ```bash
    terraform init
    ```

3.  Update the `variables.tf` file with your desired values. Each variable is explained below:

    - `subscription_name`: The desired name for the new Azure subscription.
    - `billing_scope_id`: The billing scope for the new subscription. This is typically in the format `/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/enrollmentAccounts/{enrollmentAccountId}`.
    - `scope`: The scope at which the role assignment is created. This can be a subscription, resource group, or resource.
    - `role_definition_name`: The name of the role to assign (e.g., "Reader", "Contributor").
    - `principal_id`: The object ID of the user, group, or service principal to assign the role to.
    - `resource_group_name`: The name of the resource group to create.
    - `location`: The Azure region where the resources will be created (e.g., "West US", "East US").
    - `vnet_name`: The name of the virtual network to create.
    - `address_space`: A list of address prefixes for the virtual network (e.g., `["10.0.0.0/16"]`).
    - `peering_name`: The name for the VNet peering.
    - `remote_vnet_id`: The resource ID of the virtual network to peer with.

4.  Apply the Terraform configuration:
    ```bash
    terraform apply
    ```

## Bicep

### Prerequisites

- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) installed and configured
- [Bicep CLI](https://docs.microsoft.com/en-us/azure/bicep/install) installed

### Usage

1.  Navigate to the `bicep` directory:
    ```bash
    cd bicep
    ```

2.  Update the `parameters.json` file with your desired values. Each parameter is explained below:

    - `subscriptionName`: The desired name for the new Azure subscription.
    - `billingScopeId`: The billing scope for the new subscription. This is typically in the format `/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/enrollmentAccounts/{enrollmentAccountId}`.
    - `scope`: The name of the resource group to which the role assignment applies.
    - `roleDefinitionName`: The name of the role to assign (e.g., "Reader", "Contributor").
    - `principalId`: The object ID of the user, group, or service principal to assign the role to.
    - `location`: The Azure region where the resources will be created (e.g., "West US", "East US").
    - `vnetName`: The name of the virtual network to create.
    - `addressSpace`: An array of address prefixes for the virtual network (e.g., `["10.0.0.0/16"]`).
    - `peeringName`: The name for the VNet peering.
    - `remoteVnetId`: The resource ID of the virtual network to peer with.

3.  Deploy the Bicep file:
    ```bash
    az deployment sub create --location <location> --template-file main.bicep --parameters @parameters.json
    ```

    Replace `<location>` with your desired Azure region.
