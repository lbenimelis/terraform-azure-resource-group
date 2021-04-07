# Terraform Azure Resource Group
Terraform module to create an Azure Resource Group

Example:
```hcl

module "resource-group" {
  source  = "lbenimelis/resource-group/azure"
  version = "0.0.3"
  create_management_lock = true
  resource_group_name = "test-rg"
  location = "francecentral"
  tags = {
    Env          = "prd"
    cost         = "test"
  }
}

```

This module accepts the following variables

| Name    | Description     | Required / Optional |
| ------- | --------------- | ---------- |
| resource_group_name    | The name of the resource group. Must be unique on your Azure subscription | Required |
| location | The location where the resource group should be created. For a list of all Azure locations, please consult this link or run az account list-locations --output table. | Required |
