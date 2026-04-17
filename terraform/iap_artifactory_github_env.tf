# Variables GitHub Actions pour l'environnement "artifactory" uniquement (IAP + WIF).
#
# Secrets WIF : gérés dans gcp_wif_github.tf (github_actions_environment_secret).
# Autres secrets (ex. JF_ACCESS_TOKEN, JF_URL) : hors ce fichier.
#
# Fichiers source de référence (ejs-frog-demo) :
#   terraform/gcp-wif-github/          — pool WIF + SA GCP
#   ejs-frog-demo/terraform/github-actions-variables/ — variables au niveau dépôt (ejs) ;
#   WebGoat utilise des variables d'environnement sur "artifactory" (ci-dessous).

locals {
  artifactory_iap_core_ready = (
    trimspace(var.artifactory_GCP_PROJECT_ID) != "" &&
    trimspace(var.artifactory_JF_HOST) != "" &&
    trimspace(var.artifactory_IAP_OAUTH_CLIENT_ID) != ""
  )

  artifactory_iap_vars = local.artifactory_iap_core_ready ? {
    IAP_USE_WIF         = var.artifactory_IAP_USE_WIF
    GCP_PROJECT_ID      = var.artifactory_GCP_PROJECT_ID
    JF_HOST             = var.artifactory_JF_HOST
    IAP_OAUTH_CLIENT_ID = var.artifactory_IAP_OAUTH_CLIENT_ID
  } : {}
}

resource "github_actions_environment_variable" "artifactory_iap" {
  for_each = local.artifactory_iap_vars

  repository    = var.repository
  environment   = "artifactory"
  variable_name = each.key
  value         = each.value
  depends_on    = [github_repository_environment.artifactory]
}

resource "github_actions_environment_variable" "artifactory_jf_host_cli" {
  count = local.artifactory_iap_core_ready && trimspace(var.artifactory_JF_HOST_CLI) != "" ? 1 : 0

  repository    = var.repository
  environment   = "artifactory"
  variable_name = "JF_HOST_CLI"
  value         = trimspace(var.artifactory_JF_HOST_CLI)
  depends_on    = [github_repository_environment.artifactory]
}

resource "github_actions_environment_variable" "artifactory_jf_docker_username" {
  count = local.artifactory_iap_core_ready && trimspace(var.artifactory_JF_DOCKER_USERNAME) != "" ? 1 : 0

  repository    = var.repository
  environment   = "artifactory"
  variable_name = "JF_DOCKER_USERNAME"
  value         = trimspace(var.artifactory_JF_DOCKER_USERNAME)
  depends_on    = [github_repository_environment.artifactory]
}
