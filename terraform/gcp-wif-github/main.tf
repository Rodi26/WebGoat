# Stack autonome : uniquement infrastructure GCP WIF (+ sorties pour secrets GitHub).
# Pour gérer aussi variables IAP + secrets GitHub sur "artifactory", préférer terraform apply à la racine terraform/.

module "wif" {
  source = "../modules/gcp-wif-github"

  providers = {
    google = google
  }

  project_id                   = var.project_id
  region                       = var.region
  github_org                   = var.github_org
  github_repo_full             = var.github_repo_full
  restrict_to_single_repo      = var.restrict_to_single_repo
  pool_id                      = var.pool_id
  provider_id                  = var.provider_id
  service_account_id           = var.service_account_id
  pool_display_name            = var.pool_display_name
  service_account_display_name = var.service_account_display_name
}
