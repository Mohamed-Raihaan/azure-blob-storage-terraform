# Automated Azure Blob Storage & Lifecycle Architecture (Terraform)

This project uses **Terraform (Infrastructure as Code)** to automatically provision a secure, cost-optimized **Azure Blob Storage** environment. Instead of manual portal configuration, all resources, security policies, and automated data lifecycle rules are defined declaratively in code.

## Architecture & Features

- **Infrastructure as Code (IaC):** Modular Terraform setup (`main.tf`, `variables.tf`, `outputs.tf`) for repeatable, error-free deployments.
- **Security Hardening:** Blocks anonymous public blob access (`allow_nested_items_to_be_public = false`), enforces **TLS 1.2**, and configures private container access levels.
- **Automated Cost Optimization:** Implements an Azure Storage Management Policy (`auto-tier-and-cleanup`) that transitions logs in `archive-logs/` from the **Hot** tier to the **Cool** tier after **30 days**, and deletes blobs after **90 days**.
- **Data Resilience & Recovery:** Enables **Blob Versioning** and a **7-day Soft Delete** retention policy to protect against accidental deletion or overwrites.

## Project Structure

```text
├── main.tf          # Core Azure resources (Resource Group, Storage Account, Containers, Lifecycle Policy)
├── variables.tf     # Input variables for region, resource group, and globally unique storage name
└── outputs.tf       # Outputs for Storage Account ID and primary Blob endpoint URL
```

## How to Deploy

1. **Initialize Terraform:**
   ```bash
   terraform init
   ```
2. **Validate & Preview Changes:**
   ```bash
   terraform validate
   terraform plan
   ```
3. **Provision Infrastructure:**
   ```bash
   terraform apply
   ```
4. **Clean Up Resources:**
   ```bash
   terraform destroy
   ```

## Deployment Verification

### 1. Terraform Apply Output
![Terraform Apply](1-terraform-apply.png)

### 2. Private Blob Containers
![Blob Containers](2-blob-containers.png)

### 3. Automated Lifecycle Management Policy
![Lifecycle Policy](3-lifecycle-policy.png)
