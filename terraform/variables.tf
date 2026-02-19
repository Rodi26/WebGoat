variable "repo-deploy-releases" {
  type = string
}

variable "repo-deploy-snapshots" {
  type = string
}

variable "repo-resolve-releases" {
  type = string
}

variable "repo-resolve-snapshots" {
  type = string
}

variable "project" {
  type = string
}

variable "repository" {
  type = string
}

variable "github_token" {
  type = string
  description = "GitHub personal access token"
}

variable "github_owner" {
  type = string
  description = "GitHub organization or individual user account to manage"
}

variable "github_repository" {
  type = string
  description = "GitHub repository name"
} 

variable "jfrog_url" {
  type = string
  default = "http://localhost:8081"
}

variable "OIDC_PROVIDER_NAME" {
  type = string
  description = "OIDC Provider Name"
}

variable "OIDC_AUDIENCE" {
  type = string
  description = "OIDC Audience"
}

variable "OIDC_IDENTITY_MAPPING" {
  type = string
  description = "OIDC identity mapping"
}

variable "DOCKER_DEV_REPO" {
  type = string
  description = "Repo for docker"
}

variable "solenglatest_repo-deploy-releases" {
  type = string
}

variable "solenglatest_repo-deploy-snapshots" {
  type = string
}

variable "solenglatest_repo-resolve-releases" {
  type = string
}

variable "solenglatest_repo-resolve-snapshots" {
  type = string
}

variable "solenglatest_project" {
  type = string
}

variable "solenglatest_OIDC_PROVIDER_NAME" {
  type = string
}

variable "solenglatest_OIDC_AUDIENCE" {
  type = string
}

variable "solenglatest_OIDC_IDENTITY_MAPPING" {
  type = string
}

variable "solenglatest_DOCKER_DEV_REPO" {
  type = string
}

variable "myjfrog_repo-deploy-releases" {
  type = string
}

variable "myjfrog_repo-deploy-snapshots" {
  type = string
}

variable "myjfrog_repo-resolve-releases" {
  type = string
}

variable "myjfrog_repo-resolve-snapshots" {
  type = string
}

variable "myjfrog_project" {
  type = string
}

variable "myjfrog_OIDC_PROVIDER_NAME" {
  type = string
}

variable "myjfrog_OIDC_AUDIENCE" {
  type = string
}

variable "myjfrog_OIDC_IDENTITY_MAPPING" {
  type = string
}

variable "myjfrog_DOCKER_DEV_REPO" {
  type = string
}

variable "artifactory_repo-deploy-releases" {
  type = string
}

variable "artifactory_repo-deploy-snapshots" {
  type = string
}

variable "artifactory_repo-resolve-releases" {
  type = string
}

variable "artifactory_repo-resolve-snapshots" {
  type = string
}

variable "artifactory_project" {
  type = string
}

variable "artifactory_OIDC_PROVIDER_NAME" {
  type = string
}

variable "artifactory_OIDC_AUDIENCE" {
  type = string
}

variable "artifactory_OIDC_IDENTITY_MAPPING" {
  type = string
}

variable "artifactory_DOCKER_DEV_REPO" {
  type = string
}


