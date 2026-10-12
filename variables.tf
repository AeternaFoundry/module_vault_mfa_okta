variable "mfa_okta" {
  description = <<EOT
Map of mfa_okta, attributes below
Required:
    - api_token
    - mount_accessor
    - name
    - org_name
Optional:
    - base_url
    - namespace
    - primary_email
    - username_format
EOT

  type = map(object({
    api_token       = string
    mount_accessor  = string
    name            = string
    org_name        = string
    base_url        = optional(string)
    namespace       = optional(string)
    primary_email   = optional(bool)
    username_format = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

