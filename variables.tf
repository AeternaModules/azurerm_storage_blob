variable "storage_blobs" {
  description = <<EOT
Map of storage_blobs, attributes below
Required:
    - name
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
    - storage_account_name
    - storage_container_id
    - storage_container_name
EOT

  type = map(object({
    name                   = string
    type                   = string
    access_tier            = optional(string)
    cache_control          = optional(string)
    content_md5            = optional(string)
    content_type           = optional(string) # Default: "application/octet-stream"
    encryption_scope       = optional(string)
    metadata               = optional(map(string))
    parallelism            = optional(number) # Default: 8
    size                   = optional(number) # Default: 0
    source                 = optional(string)
    source_content         = optional(string)
    source_uri             = optional(string)
    storage_account_name   = optional(string)
    storage_container_id   = optional(string)
    storage_container_name = optional(string)
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
        v.parallelism == null || (v.parallelism >= 1)
      )
    ])
    error_message = "must be at least 1"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_storage_blob's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: size
  #   source:    validation.IntDivisibleBy(...) - no translation rule yet, add one
  # path: access_tier
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: encryption_scope
  #   source:    [from validate.StorageEncryptionScopeName] !regexp.MustCompile("^[0-9a-zA-Z]{4,63}$").MatchString(input)
}

