output "storage_account_id" {
  description = "The ID of the provisioned Storage Account"
  value       = azurerm_storage_account.storage.id
}

output "primary_blob_endpoint" {
  description = "The primary Blob service endpoint URL"
  value       = azurerm_storage_account.storage.primary_blob_endpoint
}
