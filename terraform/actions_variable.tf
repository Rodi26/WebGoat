resource "github_actions_variable" "repo-deploy-releases" {
  repository       = "${var.repository}"
  variable_name    = "MVN_DEV_REPO_DEPLOY_RELEASES"
  value            = "${var.repo-deploy-releases}"
}

resource "github_actions_variable" "var2" {
  repository       = "${var.repository}"
  variable_name    = "MVN_DEV_REPO_DEPLOY_SNAPSHOTS"
  value            = "${var.repo-deploy-snapshots}"
}

resource "github_actions_variable" "var3" {
  repository       = "${var.repository}"
  variable_name    = "MVN_DEV_REPO_RESOLVE_RELEASES"
  value            = "${var.repo-resolve-releases}"
}

resource "github_actions_variable" "var4" {
  repository       = "${var.repository}"
  variable_name    = "MVN_DEV_REPO_RESOLVE_SNAPSHOTS"
  value            = "${var.repo-resolve-snapshots}"
}

resource "github_actions_variable" "var5" {
  repository       = "${var.repository}"
  variable_name    = "JFROG_PROJECT"
  value            = "${var.project}"
}

resource "github_actions_variable" "var6" {
  repository       = "${var.repository}"
  variable_name    = "OIDC_PROVIDER_NAME"
  value            = "${var.OIDC_PROVIDER_NAME}"
}

resource "github_actions_variable" "var7" {
  repository       = "${var.repository}"
  variable_name    = "OIDC_AUDIENCE"
  value            = "${var.OIDC_AUDIENCE}"
}

resource "github_actions_variable" "var8" {
  repository       = "${var.repository}"
  variable_name    = "OIDC_IDENTITY_MAPPING"
  value            = "${var.OIDC_IDENTITY_MAPPING}"
}


resource "github_actions_variable" "var9" {
  repository       = "${var.repository}"
  variable_name    = "DOCKER_DEV_REPO"
  value            = "${var.DOCKER_DEV_REPO}"
}