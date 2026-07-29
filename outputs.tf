output "storage_blobs_id" {
  description = "Map of id values across all storage_blobs, keyed the same as var.storage_blobs"
  value       = { for k, v in azurerm_storage_blob.storage_blobs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "storage_blobs_access_tier" {
  description = "Map of access_tier values across all storage_blobs, keyed the same as var.storage_blobs"
  value       = { for k, v in azurerm_storage_blob.storage_blobs : k => v.access_tier if v.access_tier != null && length(v.access_tier) > 0 }
}
output "storage_blobs_cache_control" {
  description = "Map of cache_control values across all storage_blobs, keyed the same as var.storage_blobs"
  value       = { for k, v in azurerm_storage_blob.storage_blobs : k => v.cache_control if v.cache_control != null && length(v.cache_control) > 0 }
}
output "storage_blobs_content_md5" {
  description = "Map of content_md5 values across all storage_blobs, keyed the same as var.storage_blobs"
  value       = { for k, v in azurerm_storage_blob.storage_blobs : k => v.content_md5 if v.content_md5 != null && length(v.content_md5) > 0 }
}
output "storage_blobs_content_type" {
  description = "Map of content_type values across all storage_blobs, keyed the same as var.storage_blobs"
  value       = { for k, v in azurerm_storage_blob.storage_blobs : k => v.content_type if v.content_type != null && length(v.content_type) > 0 }
}
output "storage_blobs_encryption_scope" {
  description = "Map of encryption_scope values across all storage_blobs, keyed the same as var.storage_blobs"
  value       = { for k, v in azurerm_storage_blob.storage_blobs : k => v.encryption_scope if v.encryption_scope != null && length(v.encryption_scope) > 0 }
}
output "storage_blobs_metadata" {
  description = "Map of metadata values across all storage_blobs, keyed the same as var.storage_blobs"
  value       = { for k, v in azurerm_storage_blob.storage_blobs : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "storage_blobs_name" {
  description = "Map of name values across all storage_blobs, keyed the same as var.storage_blobs"
  value       = { for k, v in azurerm_storage_blob.storage_blobs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "storage_blobs_parallelism" {
  description = "Map of parallelism values across all storage_blobs, keyed the same as var.storage_blobs"
  value       = { for k, v in azurerm_storage_blob.storage_blobs : k => v.parallelism if v.parallelism != null }
}
output "storage_blobs_size" {
  description = "Map of size values across all storage_blobs, keyed the same as var.storage_blobs"
  value       = { for k, v in azurerm_storage_blob.storage_blobs : k => v.size if v.size != null }
}
output "storage_blobs_source" {
  description = "Map of source values across all storage_blobs, keyed the same as var.storage_blobs"
  value       = { for k, v in azurerm_storage_blob.storage_blobs : k => v.source if v.source != null && length(v.source) > 0 }
}
output "storage_blobs_source_content" {
  description = "Map of source_content values across all storage_blobs, keyed the same as var.storage_blobs"
  value       = { for k, v in azurerm_storage_blob.storage_blobs : k => v.source_content if v.source_content != null && length(v.source_content) > 0 }
}
output "storage_blobs_source_uri" {
  description = "Map of source_uri values across all storage_blobs, keyed the same as var.storage_blobs"
  value       = { for k, v in azurerm_storage_blob.storage_blobs : k => v.source_uri if v.source_uri != null && length(v.source_uri) > 0 }
}
output "storage_blobs_storage_container_id" {
  description = "Map of storage_container_id values across all storage_blobs, keyed the same as var.storage_blobs"
  value       = { for k, v in azurerm_storage_blob.storage_blobs : k => v.storage_container_id if v.storage_container_id != null && length(v.storage_container_id) > 0 }
}
output "storage_blobs_type" {
  description = "Map of type values across all storage_blobs, keyed the same as var.storage_blobs"
  value       = { for k, v in azurerm_storage_blob.storage_blobs : k => v.type if v.type != null && length(v.type) > 0 }
}
output "storage_blobs_url" {
  description = "Map of url values across all storage_blobs, keyed the same as var.storage_blobs"
  value       = { for k, v in azurerm_storage_blob.storage_blobs : k => v.url if v.url != null && length(v.url) > 0 }
}

