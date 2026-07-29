variable "storage_blobs" {
  description = <<EOT
Map of storage_blobs, attributes below
Required:
    - name
    - storage_container_id
    - type
Optional:
    - access_tier
    - cache_control
    - content_md5
    - content_type
    - encryption_scope
    - metadata
    - parallelism
    - size
    - source
    - source_content
    - source_uri
EOT

  type = map(object({
    name                 = string
    storage_container_id = string
    type                 = string
    access_tier          = optional(string)
    cache_control        = optional(string)
    content_md5          = optional(string)
    content_type         = optional(string)
    encryption_scope     = optional(string)
    metadata             = optional(map(string))
    parallelism          = optional(number)
    size                 = optional(number)
    source               = optional(string)
    source_content       = optional(string)
    source_uri           = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.storage_blobs : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.storage_blobs : (
        contains(["Append", "Block", "Page"], v.type)
      )
    ])
    error_message = "must be one of: Append, Block, Page"
  }
  validation {
    condition = alltrue([
      for k, v in var.storage_blobs : (
        v.size == null || ((v.size % 512) == 0)
      )
    ])
    error_message = "must be divisible by 512"
  }
  validation {
    condition = alltrue([
      for k, v in var.storage_blobs : (
        v.parallelism == null || (v.parallelism >= 1)
      )
    ])
    error_message = "must be at least 1"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

