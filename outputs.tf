output "mfa_okta_id" {
  description = "Map of id values across all mfa_okta, keyed the same as var.mfa_okta except keys with no id are omitted"
  value       = { for k, v in vault_mfa_okta.mfa_okta : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mfa_okta_api_token" {
  description = "Map of api_token values across all mfa_okta, keyed the same as var.mfa_okta except keys with no api_token are omitted"
  value       = { for k, v in vault_mfa_okta.mfa_okta : k => v.api_token if v.api_token != null && length(v.api_token) > 0 }
  sensitive   = true
}
output "mfa_okta_base_url" {
  description = "Map of base_url values across all mfa_okta, keyed the same as var.mfa_okta except keys with no base_url are omitted"
  value       = { for k, v in vault_mfa_okta.mfa_okta : k => v.base_url if v.base_url != null && length(v.base_url) > 0 }
}
output "mfa_okta_mount_accessor" {
  description = "Map of mount_accessor values across all mfa_okta, keyed the same as var.mfa_okta except keys with no mount_accessor are omitted"
  value       = { for k, v in vault_mfa_okta.mfa_okta : k => v.mount_accessor if v.mount_accessor != null && length(v.mount_accessor) > 0 }
}
output "mfa_okta_name" {
  description = "Map of name values across all mfa_okta, keyed the same as var.mfa_okta except keys with no name are omitted"
  value       = { for k, v in vault_mfa_okta.mfa_okta : k => v.name if v.name != null && length(v.name) > 0 }
}
output "mfa_okta_namespace" {
  description = "Map of namespace values across all mfa_okta, keyed the same as var.mfa_okta except keys with no namespace are omitted"
  value       = { for k, v in vault_mfa_okta.mfa_okta : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "mfa_okta_org_name" {
  description = "Map of org_name values across all mfa_okta, keyed the same as var.mfa_okta except keys with no org_name are omitted"
  value       = { for k, v in vault_mfa_okta.mfa_okta : k => v.org_name if v.org_name != null && length(v.org_name) > 0 }
}
output "mfa_okta_primary_email" {
  description = "Map of primary_email values across all mfa_okta, keyed the same as var.mfa_okta except keys with no primary_email are omitted"
  value       = { for k, v in vault_mfa_okta.mfa_okta : k => v.primary_email if v.primary_email != null }
}
output "mfa_okta_username_format" {
  description = "Map of username_format values across all mfa_okta, keyed the same as var.mfa_okta except keys with no username_format are omitted"
  value       = { for k, v in vault_mfa_okta.mfa_okta : k => v.username_format if v.username_format != null && length(v.username_format) > 0 }
}

