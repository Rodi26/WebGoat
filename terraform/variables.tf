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

