resource "vault_mfa_okta" "mfa_okta" {
  for_each = var.mfa_okta

  api_token       = each.value.api_token
  mount_accessor  = each.value.mount_accessor
  name            = each.value.name
  org_name        = each.value.org_name
  base_url        = each.value.base_url
  namespace       = each.value.namespace
  primary_email   = each.value.primary_email
  username_format = each.value.username_format
}

