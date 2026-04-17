variable "repo-deploy-releases" {
  type    = string
  default = ""
}

variable "repo-deploy-snapshots" {
  type    = string
  default = ""
}

variable "repo-resolve-releases" {
  type    = string
  default = ""
}

variable "repo-resolve-snapshots" {
  type    = string
  default = ""
}

variable "project" {
  type    = string
  default = ""
}

variable "repository" {
  type    = string
  default = ""
}

variable "github_token" {
  type        = string
  description = "GitHub personal access token"
  default     = ""
}

variable "github_owner" {
  type        = string
  description = "GitHub organization or individual user account to manage"
  default     = ""
}

variable "github_repository" {
  type        = string
  description = "GitHub repository name"
  default     = ""
}

variable "jfrog_url" {
  type    = string
  default = "http://localhost:8081"
}

variable "OIDC_PROVIDER_NAME" {
  type        = string
  description = "OIDC Provider Name"
  default     = ""
}

variable "OIDC_AUDIENCE" {
  type        = string
  description = "OIDC Audience"
  default     = ""
}

variable "OIDC_IDENTITY_MAPPING" {
  type        = string
  description = "OIDC identity mapping"
  default     = ""
}

variable "DOCKER_DEV_REPO" {
  type        = string
  description = "Repo for docker"
  default     = ""
}

variable "solenglatest_repo-deploy-releases" {
  type    = string
  default = ""
}

variable "solenglatest_repo-deploy-snapshots" {
  type    = string
  default = ""
}

variable "solenglatest_repo-resolve-releases" {
  type    = string
  default = ""
}

variable "solenglatest_repo-resolve-snapshots" {
  type    = string
  default = ""
}

variable "solenglatest_project" {
  type    = string
  default = ""
}

variable "solenglatest_OIDC_PROVIDER_NAME" {
  type    = string
  default = ""
}

variable "solenglatest_OIDC_AUDIENCE" {
  type    = string
  default = ""
}

variable "solenglatest_OIDC_IDENTITY_MAPPING" {
  type    = string
  default = ""
}

variable "solenglatest_DOCKER_DEV_REPO" {
  type    = string
  default = ""
}

variable "solenglatest_jfrog_url" {
  type    = string
  default = ""
}

variable "myjfrog_repo-deploy-releases" {
  type    = string
  default = ""
}

variable "myjfrog_repo-deploy-snapshots" {
  type    = string
  default = ""
}

variable "myjfrog_repo-resolve-releases" {
  type    = string
  default = ""
}

variable "myjfrog_repo-resolve-snapshots" {
  type    = string
  default = ""
}

variable "myjfrog_project" {
  type    = string
  default = ""
}

variable "myjfrog_OIDC_PROVIDER_NAME" {
  type    = string
  default = ""
}

variable "myjfrog_OIDC_AUDIENCE" {
  type    = string
  default = ""
}

variable "myjfrog_OIDC_IDENTITY_MAPPING" {
  type    = string
  default = ""
}

variable "myjfrog_DOCKER_DEV_REPO" {
  type    = string
  default = ""
}

variable "myjfrog_jfrog_url" {
  type    = string
  default = ""
}

variable "artifactory_repo-deploy-releases" {
  type    = string
  default = ""
}

variable "artifactory_repo-deploy-snapshots" {
  type    = string
  default = ""
}

variable "artifactory_repo-resolve-releases" {
  type    = string
  default = ""
}

variable "artifactory_repo-resolve-snapshots" {
  type    = string
  default = ""
}

variable "artifactory_project" {
  type    = string
  default = ""
}

variable "artifactory_OIDC_PROVIDER_NAME" {
  type    = string
  default = ""
}

variable "artifactory_OIDC_AUDIENCE" {
  type    = string
  default = ""
}

variable "artifactory_OIDC_IDENTITY_MAPPING" {
  type    = string
  default = ""
}

variable "artifactory_DOCKER_DEV_REPO" {
  type    = string
  default = ""
}

variable "artifactory_jfrog_url" {
  type    = string
  default = ""
}

# --- IAP / WIF (environnement GitHub "artifactory" uniquement) — voir iap_artifactory_github_env.tf

variable "artifactory_IAP_USE_WIF" {
  type        = string
  description = "Variable GitHub IAP_USE_WIF pour l'environnement artifactory (ex. \"true\")."
  default     = "true"
}

variable "artifactory_GCP_PROJECT_ID" {
  type        = string
  description = "Variable GitHub GCP_PROJECT_ID — même project_id que le module terraform/gcp-wif-github si vous réutilisez ce WIF."
  default     = ""
}

variable "artifactory_JF_HOST" {
  type        = string
  description = "Hostname public Artifactory derrière IAP, sans https:// (ex. artifactory.example.org). Variable GitHub JF_HOST."
  default     = ""
}

variable "artifactory_IAP_OAUTH_CLIENT_ID" {
  type        = string
  description = "Client OAuth IAP (*.apps.googleusercontent.com). Variable GitHub IAP_OAUTH_CLIENT_ID."
  default     = ""
}

variable "artifactory_JF_HOST_CLI" {
  type        = string
  description = "Optionnel — second hostname pour jf (split-DNS). Si vide, la variable JF_HOST_CLI n'est pas créée."
  default     = ""
}

variable "artifactory_JF_DOCKER_USERNAME" {
  type        = string
  description = "Optionnel — utilisateur Artifactory pour Docker Basic auth via proxy IAP. Si vide, JF_DOCKER_USERNAME n'est pas créée."
  default     = ""
}

# --- WIF : secrets GitHub + création GCP optionnelle (voir gcp_wif_github.tf)

variable "create_gcp_wif_infrastructure" {
  type        = bool
  description = "Si true, crée le pool WIF + compte de service dans GCP via modules/gcp-wif-github (nécessite credentials GCP). Sinon, utiliser artifactory_wif_* depuis un apply existant / autre repo."
  default     = false
}

variable "artifactory_wif_workload_identity_provider" {
  type        = string
  description = "Valeur du secret WORKLOAD_IDENTITY_PROVIDER. Ignorée si create_gcp_wif_infrastructure = true (sortie du module)."
  default     = ""
  sensitive   = true
}

variable "artifactory_wif_service_account_email" {
  type        = string
  description = "Valeur du secret GCP_WIF_SERVICE_ACCOUNT. Ignorée si create_gcp_wif_infrastructure = true."
  default     = ""
  sensitive   = true
}

variable "gcp_wif_project_id" {
  type        = string
  description = "Projet GCP pour module.gcp_wif_github (si create_gcp_wif_infrastructure = true)."
  default     = ""

  validation {
    condition     = !var.create_gcp_wif_infrastructure || trimspace(var.gcp_wif_project_id) != ""
    error_message = "gcp_wif_project_id est requis lorsque create_gcp_wif_infrastructure vaut true."
  }
}

variable "gcp_wif_region" {
  type        = string
  description = "Région provider Google (ressources WIF restent globales)."
  default     = "europe-west1"
}

variable "gcp_wif_github_org" {
  type        = string
  description = "Organisation GitHub pour la condition OIDC du provider WIF."
  default     = "Rodi26"
}

variable "gcp_wif_github_repo_full" {
  type        = string
  description = "Si restrict_to_single_repo, format ORG/NOM (ex. Rodi26/WebGoat)."
  default     = ""
}

variable "gcp_wif_restrict_to_single_repo" {
  type        = bool
  description = "Si true, seul github_repo_full peut utiliser WIF ; sinon toute l'org gcp_wif_github_org."
  default     = false
}

variable "gcp_wif_pool_id" {
  type    = string
  default = "rodolphef-github-actions-pool"
}

variable "gcp_wif_provider_id" {
  type    = string
  default = "rodolphef-github-provider"
}

variable "gcp_wif_service_account_id" {
  type    = string
  default = "rodolphef-github-ci-iap"
}

variable "gcp_wif_pool_display_name" {
  type        = string
  description = "≤ 32 caractères (limite API GCP)."
  default     = "GitHub Actions WIF"

  validation {
    condition     = length(var.gcp_wif_pool_display_name) <= 32
    error_message = "gcp_wif_pool_display_name must be <= 32 characters."
  }
}

variable "gcp_wif_service_account_display_name" {
  type    = string
  default = "GitHub Actions — WIF + IAP CI"
}

