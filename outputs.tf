output "storage_blobs" {
  description = "All storage_blob resources"
  value       = azurerm_storage_blob.storage_blobs
}
output "storage_blobs_access_tier" {
  description = "List of access_tier values across all storage_blobs"
  value       = [for k, v in azurerm_storage_blob.storage_blobs : v.access_tier]
}
output "storage_blobs_cache_control" {
  description = "List of cache_control values across all storage_blobs"
  value       = [for k, v in azurerm_storage_blob.storage_blobs : v.cache_control]
}
output "storage_blobs_content_md5" {
  description = "List of content_md5 values across all storage_blobs"
  value       = [for k, v in azurerm_storage_blob.storage_blobs : v.content_md5]
}
output "storage_blobs_content_type" {
  description = "List of content_type values across all storage_blobs"
  value       = [for k, v in azurerm_storage_blob.storage_blobs : v.content_type]
}
output "storage_blobs_encryption_scope" {
  description = "List of encryption_scope values across all storage_blobs"
  value       = [for k, v in azurerm_storage_blob.storage_blobs : v.encryption_scope]
}
output "storage_blobs_metadata" {
  description = "List of metadata values across all storage_blobs"
  value       = [for k, v in azurerm_storage_blob.storage_blobs : v.metadata]
}
output "storage_blobs_name" {
  description = "List of name values across all storage_blobs"
  value       = [for k, v in azurerm_storage_blob.storage_blobs : v.name]
}
output "storage_blobs_parallelism" {
  description = "List of parallelism values across all storage_blobs"
  value       = [for k, v in azurerm_storage_blob.storage_blobs : v.parallelism]
}
output "storage_blobs_size" {
  description = "List of size values across all storage_blobs"
  value       = [for k, v in azurerm_storage_blob.storage_blobs : v.size]
}
output "storage_blobs_source" {
  description = "List of source values across all storage_blobs"
  value       = [for k, v in azurerm_storage_blob.storage_blobs : v.source]
}
output "storage_blobs_source_content" {
  description = "List of source_content values across all storage_blobs"
  value       = [for k, v in azurerm_storage_blob.storage_blobs : v.source_content]
}
output "storage_blobs_source_uri" {
  description = "List of source_uri values across all storage_blobs"
  value       = [for k, v in azurerm_storage_blob.storage_blobs : v.source_uri]
}
output "storage_blobs_storage_account_name" {
  description = "List of storage_account_name values across all storage_blobs"
  value       = [for k, v in azurerm_storage_blob.storage_blobs : v.storage_account_name]
}
output "storage_blobs_storage_container_id" {
  description = "List of storage_container_id values across all storage_blobs"
  value       = [for k, v in azurerm_storage_blob.storage_blobs : v.storage_container_id]
}
output "storage_blobs_storage_container_name" {
  description = "List of storage_container_name values across all storage_blobs"
  value       = [for k, v in azurerm_storage_blob.storage_blobs : v.storage_container_name]
}
output "storage_blobs_type" {
  description = "List of type values across all storage_blobs"
  value       = [for k, v in azurerm_storage_blob.storage_blobs : v.type]
}
output "storage_blobs_url" {
  description = "List of url values across all storage_blobs"
  value       = [for k, v in azurerm_storage_blob.storage_blobs : v.url]
}

