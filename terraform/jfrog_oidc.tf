resource "platform_oidc_configuration" "my-github-oidc-configuration" {
  name          = "${var.OIDC_PROVIDER_NAME}"
  description   = "${var.OIDC_PROVIDER_NAME}"
  issuer_url    = "https://token.actions.githubusercontent.com"
  provider_type = "GitHub"
  audience      = "${var.OIDC_AUDIENCE}"
}

resource "platform_oidc_identity_mapping" "my-github-oidc-user-identity-mapping" {
  name          = "${var.OIDC_IDENTITY_MAPPING}"
  description   = "My GitHub OIDC user identity mapping"
  provider_name = "${var.OIDC_PROVIDER_NAME}"
  priority      = 1

  claims_json = jsonencode({
    "actor" = "Rodi26",
    "repository" = "Rodi26/WebGoat"
  })

  token_spec = {
    username   = "rodolphef@jfrog.com"
    scope      = "applied-permissions/user"
    audience   = "*@*"
    expires_in = 7200
  }
}