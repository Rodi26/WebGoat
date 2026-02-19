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
  type = string
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


