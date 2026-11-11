variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "Central India"
}

variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
  default     = "rg-terraform-storage-demo"
}

variable "storage_account_name" {
  description = "Globally unique storage account name (lowercase, 3-24 chars)"
  type        = string
  default     = "raihaanstorage2026"
}
