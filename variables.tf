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
    content_type           = optional(string)
    encryption_scope       = optional(string)
    metadata               = optional(map(string))
    parallelism            = optional(number)
    size                   = optional(number)
    source                 = optional(string)
    source_content         = optional(string)
    source_uri             = optional(string)
    storage_account_name   = optional(string)
    storage_container_id   = optional(string)
    storage_container_name = optional(string)
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_storage_blob's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: type
  #   condition: contains(["Append", "Block", "Page"], value)
  #   message:   must be one of: Append, Block, Page
  # path: size
  #   source:    validation.IntDivisibleBy(...) - no translation rule yet, add one
  # path: access_tier
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: encryption_scope
  #   source:    [from validate.StorageEncryptionScopeName] !regexp.MustCompile("^[0-9a-zA-Z]{4,63}$").MatchString(input)
  # path: parallelism
  #   condition: value >= 1
  #   message:   must be at least 1
  # path: metadata
  #   source:    [from validate.MetaDataKeys] isCSharpKeyword
  # path: metadata
  #   source:    [from validate.MetaDataKeys] !regexp.MustCompile(`^([a-z_]{1}[a-z0-9_]{1,})$`).MatchString(k)
}

