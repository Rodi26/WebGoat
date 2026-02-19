

resource "github_actions_environment_variable" "solenglatest_repo-deploy-releases" {
  repository       = var.repository
  environment      = "solenglatest"
  variable_name    = "MVN_DEV_REPO_DEPLOY_RELEASES"
  value            = var.solenglatest_repo-deploy-releases
  depends_on       = [github_repository_environment.solenglatest]
}

resource "github_actions_environment_variable" "solenglatest_repo-deploy-snapshots" {
  repository       = var.repository
  environment      = "solenglatest"
  variable_name    = "MVN_DEV_REPO_DEPLOY_SNAPSHOTS"
  value            = var.solenglatest_repo-deploy-snapshots
  depends_on       = [github_repository_environment.solenglatest]
}

resource "github_actions_environment_variable" "solenglatest_repo-resolve-releases" {
  repository       = var.repository
  environment      = "solenglatest"
  variable_name    = "MVN_DEV_REPO_RESOLVE_RELEASES"
  value            = var.solenglatest_repo-resolve-releases
  depends_on       = [github_repository_environment.solenglatest]
}

resource "github_actions_environment_variable" "solenglatest_repo-resolve-snapshots" {
  repository       = var.repository
  environment      = "solenglatest"
  variable_name    = "MVN_DEV_REPO_RESOLVE_SNAPSHOTS"
  value            = var.solenglatest_repo-resolve-snapshots
  depends_on       = [github_repository_environment.solenglatest]
}

resource "github_actions_environment_variable" "solenglatest_project" {
  repository       = var.repository
  environment      = "solenglatest"
  variable_name    = "JFROG_PROJECT"
  value            = var.solenglatest_project
  depends_on       = [github_repository_environment.solenglatest]
}

resource "github_actions_environment_variable" "solenglatest_oidc_provider_name" {
  repository       = var.repository
  environment      = "solenglatest"
  variable_name    = "OIDC_PROVIDER_NAME"
  value            = var.solenglatest_OIDC_PROVIDER_NAME
  depends_on       = [github_repository_environment.solenglatest]
}

resource "github_actions_environment_variable" "solenglatest_oidc_audience" {
  repository       = var.repository
  environment      = "solenglatest"
  variable_name    = "OIDC_AUDIENCE"
  value            = var.solenglatest_OIDC_AUDIENCE
  depends_on       = [github_repository_environment.solenglatest]
}

resource "github_actions_environment_variable" "solenglatest_oidc_identity_mapping" {
  repository       = var.repository
  environment      = "solenglatest"
  variable_name    = "OIDC_IDENTITY_MAPPING"
  value            = var.solenglatest_OIDC_IDENTITY_MAPPING
  depends_on       = [github_repository_environment.solenglatest]
}

resource "github_actions_environment_variable" "solenglatest_docker_dev_repo" {
  repository       = var.repository
  environment      = "solenglatest"
  variable_name    = "DOCKER_DEV_REPO"
  value            = var.solenglatest_DOCKER_DEV_REPO
  depends_on       = [github_repository_environment.solenglatest]
}

resource "github_actions_environment_variable" "solenglatest_jfrog_url" {
  repository       = var.repository
  environment      = "solenglatest"
  variable_name    = "JFROG_URL"
  value            = var.solenglatest_jfrog_url
  depends_on       = [github_repository_environment.solenglatest]
}

resource "github_actions_environment_variable" "myjfrog_repo-deploy-releases" {
  repository       = var.repository
  environment      = "myjfrog"
  variable_name    = "MVN_DEV_REPO_DEPLOY_RELEASES"
  value            = var.myjfrog_repo-deploy-releases
  depends_on       = [github_repository_environment.myjfrog]
}

resource "github_actions_environment_variable" "myjfrog_repo-deploy-snapshots" {
  repository       = var.repository
  environment      = "myjfrog"
  variable_name    = "MVN_DEV_REPO_DEPLOY_SNAPSHOTS"
  value            = var.myjfrog_repo-deploy-snapshots
  depends_on       = [github_repository_environment.myjfrog]
}

resource "github_actions_environment_variable" "myjfrog_repo-resolve-releases" {
  repository       = var.repository
  environment      = "myjfrog"
  variable_name    = "MVN_DEV_REPO_RESOLVE_RELEASES"
  value            = var.myjfrog_repo-resolve-releases
  depends_on       = [github_repository_environment.myjfrog]
}

resource "github_actions_environment_variable" "myjfrog_repo-resolve-snapshots" {
  repository       = var.repository
  environment      = "myjfrog"
  variable_name    = "MVN_DEV_REPO_RESOLVE_SNAPSHOTS"
  value            = var.myjfrog_repo-resolve-snapshots
  depends_on       = [github_repository_environment.myjfrog]
}

resource "github_actions_environment_variable" "myjfrog_project" {
  repository       = var.repository
  environment      = "myjfrog"
  variable_name    = "JFROG_PROJECT"
  value            = var.myjfrog_project
  depends_on       = [github_repository_environment.myjfrog]
}

resource "github_actions_environment_variable" "myjfrog_oidc_provider_name" {
  repository       = var.repository
  environment      = "myjfrog"
  variable_name    = "OIDC_PROVIDER_NAME"
  value            = var.myjfrog_OIDC_PROVIDER_NAME
  depends_on       = [github_repository_environment.myjfrog]
}

resource "github_actions_environment_variable" "myjfrog_oidc_audience" {
  repository       = var.repository
  environment      = "myjfrog"
  variable_name    = "OIDC_AUDIENCE"
  value            = var.myjfrog_OIDC_AUDIENCE
  depends_on       = [github_repository_environment.myjfrog]
}

resource "github_actions_environment_variable" "myjfrog_oidc_identity_mapping" {
  repository       = var.repository
  environment      = "myjfrog"
  variable_name    = "OIDC_IDENTITY_MAPPING"
  value            = var.myjfrog_OIDC_IDENTITY_MAPPING
  depends_on       = [github_repository_environment.myjfrog]
}

resource "github_actions_environment_variable" "myjfrog_docker_dev_repo" {
  repository       = var.repository
  environment      = "myjfrog"
  variable_name    = "DOCKER_DEV_REPO"
  value            = var.myjfrog_DOCKER_DEV_REPO
  depends_on       = [github_repository_environment.myjfrog]
}

resource "github_actions_environment_variable" "myjfrog_jfrog_url" {
  repository       = var.repository
  environment      = "myjfrog"
  variable_name    = "JFROG_URL"
  value            = var.myjfrog_jfrog_url
  depends_on       = [github_repository_environment.myjfrog]
}

resource "github_actions_environment_variable" "artifactory_repo-deploy-releases" {
  repository       = var.repository
  environment      = "artifactory"
  variable_name    = "MVN_DEV_REPO_DEPLOY_RELEASES"
  value            = var.artifactory_repo-deploy-releases
  depends_on       = [github_repository_environment.artifactory]
}

resource "github_actions_environment_variable" "artifactory_repo-deploy-snapshots" {
  repository       = var.repository
  environment      = "artifactory"
  variable_name    = "MVN_DEV_REPO_DEPLOY_SNAPSHOTS"
  value            = var.artifactory_repo-deploy-snapshots
  depends_on       = [github_repository_environment.artifactory]
}

resource "github_actions_environment_variable" "artifactory_repo-resolve-releases" {
  repository       = var.repository
  environment      = "artifactory"
  variable_name    = "MVN_DEV_REPO_RESOLVE_RELEASES"
  value            = var.artifactory_repo-resolve-releases
  depends_on       = [github_repository_environment.artifactory]
}

resource "github_actions_environment_variable" "artifactory_repo-resolve-snapshots" {
  repository       = var.repository
  environment      = "artifactory"
  variable_name    = "MVN_DEV_REPO_RESOLVE_SNAPSHOTS"
  value            = var.artifactory_repo-resolve-snapshots
  depends_on       = [github_repository_environment.artifactory]
}

resource "github_actions_environment_variable" "artifactory_project" {
  repository       = var.repository
  environment      = "artifactory"
  variable_name    = "JFROG_PROJECT"
  value            = var.artifactory_project
  depends_on       = [github_repository_environment.artifactory]
}

resource "github_actions_environment_variable" "artifactory_oidc_provider_name" {
  repository       = var.repository
  environment      = "artifactory"
  variable_name    = "OIDC_PROVIDER_NAME"
  value            = var.artifactory_OIDC_PROVIDER_NAME
  depends_on       = [github_repository_environment.artifactory]
}

resource "github_actions_environment_variable" "artifactory_oidc_audience" {
  repository       = var.repository
  environment      = "artifactory"
  variable_name    = "OIDC_AUDIENCE"
  value            = var.artifactory_OIDC_AUDIENCE
  depends_on       = [github_repository_environment.artifactory]
}

resource "github_actions_environment_variable" "artifactory_oidc_identity_mapping" {
  repository       = var.repository
  environment      = "artifactory"
  variable_name    = "OIDC_IDENTITY_MAPPING"
  value            = var.artifactory_OIDC_IDENTITY_MAPPING
  depends_on       = [github_repository_environment.artifactory]
}

resource "github_actions_environment_variable" "artifactory_docker_dev_repo" {
  repository       = var.repository
  environment      = "artifactory"
  variable_name    = "DOCKER_DEV_REPO"
  value            = var.artifactory_DOCKER_DEV_REPO
  depends_on       = [github_repository_environment.artifactory]
}

resource "github_actions_environment_variable" "artifactory_jfrog_url" {
  repository       = var.repository
  environment      = "artifactory"
  variable_name    = "JFROG_URL"
  value            = var.artifactory_jfrog_url
  depends_on       = [github_repository_environment.artifactory]
}