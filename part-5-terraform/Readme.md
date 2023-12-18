# Part 5 - Create an AKS Cluster using Terraform

This guide outlines the steps to set up an Azure Kubernetes Service (AKS) cluster using Terraform.  

## Steps:

### 1. Create a Terraform Workspace and AKS Module

- Configure files:

```
└── terraform-workspace
    ├── backend.tf
    ├── main.tf
    ├── modules
    │   └── aks
    │       ├── main.tf
    │       ├── outputs.tf
    │       └── variables.tf
    ├── storage-account.tf
    ├── storage-container.tf
    ├── terraform.tfstate
    ├── terraform.tfstate.backup
    ├── terraform.tfvars
    └── variables.tf
```

### 2. Commands
```
$ terraform init
$ terraform plan
$ terramorf apply

```

### 3. Manage State in Remote Azure Blob

- Navigate to the `terraform-workspace` directory.
- Create configurations in files based on networking and infrastructure needs.
- Repeat: `$ terraform init` as there has been a change on state

### 4. [Bonus] Publish the Terraform Module to Terraform Cloud

- Consider publishing your Terraform module to Terraform Cloud.
- Create a free account on Terraform Cloud and follow the platform's documentation  

 
 