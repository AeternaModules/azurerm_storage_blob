output "storage_blobs_access_tier" {
  description = "Map of access_tier values across all storage_blobs, keyed the same as var.storage_blobs"
  value       = { for k, v in azurerm_storage_blob.storage_blobs : k => v.access_tier }
}
output "storage_blobs_cache_control" {
  description = "Map of cache_control values across all storage_blobs, keyed the same as var.storage_blobs"
  value       = { for k, v in azurerm_storage_blob.storage_blobs : k => v.cache_control }
}
output "storage_blobs_content_md5" {
  description = "Map of content_md5 values across all storage_blobs, keyed the same as var.storage_blobs"
  value       = { for k, v in azurerm_storage_blob.storage_blobs : k => v.content_md5 }
}
output "storage_blobs_content_type" {
  description = "Map of content_type values across all storage_blobs, keyed the same as var.storage_blobs"
  value       = { for k, v in azurerm_storage_blob.storage_blobs : k => v.content_type }
}
output "storage_blobs_encryption_scope" {
  description = "Map of encryption_scope values across all storage_blobs, keyed the same as var.storage_blobs"
  value       = { for k, v in azurerm_storage_blob.storage_blobs : k => v.encryption_scope }
}
output "storage_blobs_metadata" {
  description = "Map of metadata values across all storage_blobs, keyed the same as var.storage_blobs"
  value       = { for k, v in azurerm_storage_blob.storage_blobs : k => v.metadata }
}
output "storage_blobs_name" {
  description = "Map of name values across all storage_blobs, keyed the same as var.storage_blobs"
  value       = { for k, v in azurerm_storage_blob.storage_blobs : k => v.name }
}
output "storage_blobs_parallelism" {
  description = "Map of parallelism values across all storage_blobs, keyed the same as var.storage_blobs"
  value       = { for k, v in azurerm_storage_blob.storage_blobs : k => v.parallelism }
}
output "storage_blobs_size" {
  description = "Map of size values across all storage_blobs, keyed the same as var.storage_blobs"
  value       = { for k, v in azurerm_storage_blob.storage_blobs : k => v.size }
}
output "storage_blobs_source" {
  description = "Map of source values across all storage_blobs, keyed the same as var.storage_blobs"
  value       = { for k, v in azurerm_storage_blob.storage_blobs : k => v.source }
}
output "storage_blobs_source_content" {
  description = "Map of source_content values across all storage_blobs, keyed the same as var.storage_blobs"
  value       = { for k, v in azurerm_storage_blob.storage_blobs : k => v.source_content }
}
output "storage_blobs_source_uri" {
  description = "Map of source_uri values across all storage_blobs, keyed the same as var.storage_blobs"
  value       = { for k, v in azurerm_storage_blob.storage_blobs : k => v.source_uri }
}
output "storage_blobs_storage_account_name" {
  description = "Map of storage_account_name values across all storage_blobs, keyed the same as var.storage_blobs"
  value       = { for k, v in azurerm_storage_blob.storage_blobs : k => v.storage_account_name }
}
output "storage_blobs_storage_container_id" {
  description = "Map of storage_container_id values across all storage_blobs, keyed the same as var.storage_blobs"
  value       = { for k, v in azurerm_storage_blob.storage_blobs : k => v.storage_container_id }
}
output "storage_blobs_storage_container_name" {
  description = "Map of storage_container_name values across all storage_blobs, keyed the same as var.storage_blobs"
  value       = { for k, v in azurerm_storage_blob.storage_blobs : k => v.storage_container_name }
}
output "storage_blobs_type" {
  description = "Map of type values across all storage_blobs, keyed the same as var.storage_blobs"
  value       = { for k, v in azurerm_storage_blob.storage_blobs : k => v.type }
}
output "storage_blobs_url" {
  description = "Map of url values across all storage_blobs, keyed the same as var.storage_blobs"
  value       = { for k, v in azurerm_storage_blob.storage_blobs : k => v.url }
}

