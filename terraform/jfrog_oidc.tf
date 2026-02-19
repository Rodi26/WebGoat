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
    "actor" = "${var.github_owner}",
    "repository" = "${var.github_owner}/${var.github_repository}"
  })

  token_spec = {
    username   = "rodolphef@jfrog.com"
    scope      = "applied-permissions/user"
    audience   = "*@*"
    expires_in = 7200
  }
}

resource "github_actions_environment_variable" "solenglatest_repo-deploy-releases" {
  repository       = var.repository
  environment      = "solenglatest"
  variable_name    = "MVN_DEV_REPO_DEPLOY_RELEASES"
  value            = var.solenglatest_repo-deploy-releases
}

resource "github_actions_environment_variable" "solenglatest_repo-deploy-snapshots" {
  repository       = var.repository
  environment      = "solenglatest"
  variable_name    = "MVN_DEV_REPO_DEPLOY_SNAPSHOTS"
  value            = var.solenglatest_repo-deploy-snapshots
}

resource "github_actions_environment_variable" "solenglatest_repo-resolve-releases" {
  repository       = var.repository
  environment      = "solenglatest"
  variable_name    = "MVN_DEV_REPO_RESOLVE_RELEASES"
  value            = var.solenglatest_repo-resolve-releases
}

resource "github_actions_environment_variable" "solenglatest_repo-resolve-snapshots" {
  repository       = var.repository
  environment      = "solenglatest"
  variable_name    = "MVN_DEV_REPO_RESOLVE_SNAPSHOTS"
  value            = var.solenglatest_repo-resolve-snapshots
}

resource "github_actions_environment_variable" "solenglatest_project" {
  repository       = var.repository
  environment      = "solenglatest"
  variable_name    = "JFROG_PROJECT"
  value            = var.solenglatest_project
}

resource "github_actions_environment_variable" "solenglatest_oidc_provider_name" {
  repository       = var.repository
  environment      = "solenglatest"
  variable_name    = "OIDC_PROVIDER_NAME"
  value            = var.solenglatest_OIDC_PROVIDER_NAME
}

resource "github_actions_environment_variable" "solenglatest_oidc_audience" {
  repository       = var.repository
  environment      = "solenglatest"
  variable_name    = "OIDC_AUDIENCE"
  value            = var.solenglatest_OIDC_AUDIENCE
}

resource "github_actions_environment_variable" "solenglatest_oidc_identity_mapping" {
  repository       = var.repository
  environment      = "solenglatest"
  variable_name    = "OIDC_IDENTITY_MAPPING"
  value            = var.solenglatest_OIDC_IDENTITY_MAPPING
}

resource "github_actions_environment_variable" "solenglatest_docker_dev_repo" {
  repository       = var.repository
  environment      = "solenglatest"
  variable_name    = "DOCKER_DEV_REPO"
  value            = var.solenglatest_DOCKER_DEV_REPO
}

resource "github_actions_environment_variable" "solenglatest_jfrog_url" {
  repository       = var.repository
  environment      = "solenglatest"
  variable_name    = "JFROG_URL"
  value            = var.solenglatest_jfrog_url
}

resource "github_actions_environment_variable" "myjfrog_repo-deploy-releases" {
  repository       = var.repository
  environment      = "myjfrog"
  variable_name    = "MVN_DEV_REPO_DEPLOY_RELEASES"
  value            = var.myjfrog_repo-deploy-releases
}

resource "github_actions_environment_variable" "myjfrog_repo-deploy-snapshots" {
  repository       = var.repository
  environment      = "myjfrog"
  variable_name    = "MVN_DEV_REPO_DEPLOY_SNAPSHOTS"
  value            = var.myjfrog_repo-deploy-snapshots
}

resource "github_actions_environment_variable" "myjfrog_repo-resolve-releases" {
  repository       = var.repository
  environment      = "myjfrog"
  variable_name    = "MVN_DEV_REPO_RESOLVE_RELEASES"
  value            = var.myjfrog_repo-resolve-releases
}

resource "github_actions_environment_variable" "myjfrog_repo-resolve-snapshots" {
  repository       = var.repository
  environment      = "myjfrog"
  variable_name    = "MVN_DEV_REPO_RESOLVE_SNAPSHOTS"
  value            = var.myjfrog_repo-resolve-snapshots
}

resource "github_actions_environment_variable" "myjfrog_project" {
  repository       = var.repository
  environment      = "myjfrog"
  variable_name    = "JFROG_PROJECT"
  value            = var.myjfrog_project
}

resource "github_actions_environment_variable" "myjfrog_oidc_provider_name" {
  repository       = var.repository
  environment      = "myjfrog"
  variable_name    = "OIDC_PROVIDER_NAME"
  value            = var.myjfrog_OIDC_PROVIDER_NAME
}

resource "github_actions_environment_variable" "myjfrog_oidc_audience" {
  repository       = var.repository
  environment      = "myjfrog"
  variable_name    = "OIDC_AUDIENCE"
  value            = var.myjfrog_OIDC_AUDIENCE
}

resource "github_actions_environment_variable" "myjfrog_oidc_identity_mapping" {
  repository       = var.repository
  environment      = "myjfrog"
  variable_name    = "OIDC_IDENTITY_MAPPING"
  value            = var.myjfrog_OIDC_IDENTITY_MAPPING
}

resource "github_actions_environment_variable" "myjfrog_docker_dev_repo" {
  repository       = var.repository
  environment      = "myjfrog"
  variable_name    = "DOCKER_DEV_REPO"
  value            = var.myjfrog_DOCKER_DEV_REPO
}

resource "github_actions_environment_variable" "myjfrog_jfrog_url" {
  repository       = var.repository
  environment      = "myjfrog"
  variable_name    = "JFROG_URL"
  value            = var.myjfrog_jfrog_url
}

resource "github_actions_environment_variable" "artifactory_repo-deploy-releases" {
  repository       = var.repository
  environment      = "artifactory"
  variable_name    = "MVN_DEV_REPO_DEPLOY_RELEASES"
  value            = var.artifactory_repo-deploy-releases
}

resource "github_actions_environment_variable" "artifactory_repo-deploy-snapshots" {
  repository       = var.repository
  environment      = "artifactory"
  variable_name    = "MVN_DEV_REPO_DEPLOY_SNAPSHOTS"
  value            = var.artifactory_repo-deploy-snapshots
}

resource "github_actions_environment_variable" "artifactory_repo-resolve-releases" {
  repository       = var.repository
  environment      = "artifactory"
  variable_name    = "MVN_DEV_REPO_RESOLVE_RELEASES"
  value            = var.artifactory_repo-resolve-releases
}

resource "github_actions_environment_variable" "artifactory_repo-resolve-snapshots" {
  repository       = var.repository
  environment      = "artifactory"
  variable_name    = "MVN_DEV_REPO_RESOLVE_SNAPSHOTS"
  value            = var.artifactory_repo-resolve-snapshots
}

resource "github_actions_environment_variable" "artifactory_project" {
  repository       = var.repository
  environment      = "artifactory"
  variable_name    = "JFROG_PROJECT"
  value            = var.artifactory_project
}

resource "github_actions_environment_variable" "artifactory_oidc_provider_name" {
  repository       = var.repository
  environment      = "artifactory"
  variable_name    = "OIDC_PROVIDER_NAME"
  value            = var.artifactory_OIDC_PROVIDER_NAME
}

resource "github_actions_environment_variable" "artifactory_oidc_audience" {
  repository       = var.repository
  environment      = "artifactory"
  variable_name    = "OIDC_AUDIENCE"
  value            = var.artifactory_OIDC_AUDIENCE
}

resource "github_actions_environment_variable" "artifactory_oidc_identity_mapping" {
  repository       = var.repository
  environment      = "artifactory"
  variable_name    = "OIDC_IDENTITY_MAPPING"
  value            = var.artifactory_OIDC_IDENTITY_MAPPING
}

resource "github_actions_environment_variable" "artifactory_docker_dev_repo" {
  repository       = var.repository
  environment      = "artifactory"
  variable_name    = "DOCKER_DEV_REPO"
  value            = var.artifactory_DOCKER_DEV_REPO
}

resource "github_actions_environment_variable" "artifactory_jfrog_url" {
  repository       = var.repository
  environment      = "artifactory"
  variable_name    = "JFROG_URL"
  value            = var.artifactory_jfrog_url
}