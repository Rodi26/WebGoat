resource "github_repository_environment" "solenglatest" {
  repository  = var.repository
  environment = "solenglatest"
}

resource "github_repository_environment" "myjfrog" {
  repository  = var.repository
  environment = "myjfrog"
}

resource "github_repository_environment" "artifactory" {
  repository  = var.repository
  environment = "artifactory"
}
