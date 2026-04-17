terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
    google = {
      source  = "hashicorp/google"
      version = ">= 5.25.0, < 7.0.0"
    }
    platform = {
      source  = "jfrog/platform"
      version = "2.2.1"
    }
    xray = {
      source  = "jfrog/xray"
      version = "~> 3.1"
    }
  }
  backend "remote" {
    hostname     = "rodolphefplus.jfrog.io"
    organization = "soleng-terraformbe-dev-local"
    workspaces {
      name = "default"
    }
  }
}

# Configure the GitHub Provider
provider "github" {}

# Utilisé par module.gcp_wif_github (si create_gcp_wif_infrastructure = true).
provider "google" {
  region = var.gcp_wif_region
}

provider "platform" {
  url = var.jfrog_url
  // supply JFROG_ACCESS_TOKEN as env var
}

provider "xray" {
  url = var.jfrog_url
  // supply JFROG_ACCESS_TOKEN as env var
}