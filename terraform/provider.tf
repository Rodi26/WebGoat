terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
    platform = {
      source  = "jfrog/platform"
      version = "2.2.1"
    }
  }
}

# Configure the GitHub Provider
provider "github" {}

provider "platform" {
  url = "${var.jfrog_url}"
  // supply JFROG_ACCESS_TOKEN as env var
}