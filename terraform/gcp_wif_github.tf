# WIF GCP (optionnel) + secrets GitHub Environnement "artifactory" pour les workflows IAP.
#
# Modes :
# - create_gcp_wif_infrastructure = false (défaut) : réutilise un pool WIF existant ; renseigner
#   artifactory_wif_workload_identity_provider et artifactory_wif_service_account_email (ex. sorties
#   terraform d'un autre répertoire / ejs-frog-demo).
# - create_gcp_wif_infrastructure = true : crée le pool + SA dans GCP et alimente les secrets GitHub
#   (nécessite ADC / credentials GCP avec droits IAM).

module "gcp_wif_github" {
  count  = var.create_gcp_wif_infrastructure ? 1 : 0
  source = "./modules/gcp-wif-github"

  providers = {
    google = google
  }

  project_id                   = var.gcp_wif_project_id
  region                       = var.gcp_wif_region
  github_org                   = var.gcp_wif_github_org
  github_repo_full             = var.gcp_wif_github_repo_full
  restrict_to_single_repo      = var.gcp_wif_restrict_to_single_repo
  pool_id                      = var.gcp_wif_pool_id
  provider_id                  = var.gcp_wif_provider_id
  service_account_id           = var.gcp_wif_service_account_id
  pool_display_name            = var.gcp_wif_pool_display_name
  service_account_display_name = var.gcp_wif_service_account_display_name
}

locals {
  wif_workload_identity_provider = (
    var.create_gcp_wif_infrastructure
    ? module.gcp_wif_github[0].workload_identity_provider
    : var.artifactory_wif_workload_identity_provider
  )
  wif_service_account_email = (
    var.create_gcp_wif_infrastructure
    ? module.gcp_wif_github[0].service_account_email
    : var.artifactory_wif_service_account_email
  )

  # IAP variables + identités WIF pour google-github-actions/auth
  artifactory_wif_secrets_ready = (
    local.artifactory_iap_core_ready &&
    trimspace(local.wif_workload_identity_provider) != "" &&
    trimspace(local.wif_service_account_email) != ""
  )
}

resource "github_actions_environment_secret" "artifactory_workload_identity_provider" {
  count = local.artifactory_wif_secrets_ready ? 1 : 0

  repository      = var.repository
  environment     = "artifactory"
  secret_name     = "WORKLOAD_IDENTITY_PROVIDER"
  plaintext_value = local.wif_workload_identity_provider

  depends_on = [github_repository_environment.artifactory]
}

resource "github_actions_environment_secret" "artifactory_gcp_wif_service_account" {
  count = local.artifactory_wif_secrets_ready ? 1 : 0

  repository      = var.repository
  environment     = "artifactory"
  secret_name     = "GCP_WIF_SERVICE_ACCOUNT"
  plaintext_value = local.wif_service_account_email

  depends_on = [github_repository_environment.artifactory]
}

output "wif_workload_identity_provider" {
  description = "Valeur poussée vers le secret GitHub WORKLOAD_IDENTITY_PROVIDER (sensible si import)."
  value       = local.artifactory_wif_secrets_ready ? local.wif_workload_identity_provider : null
  sensitive   = true
}

output "wif_service_account_email" {
  description = "Valeur poussée vers le secret GitHub GCP_WIF_SERVICE_ACCOUNT."
  value       = local.artifactory_wif_secrets_ready ? local.wif_service_account_email : null
  sensitive   = true
}
