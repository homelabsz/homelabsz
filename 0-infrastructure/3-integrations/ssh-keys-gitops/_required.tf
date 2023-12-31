terraform {
  required_version = "~> 1.5"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.35"
    }
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = "~> 16.3"
    }
    scaleway = {
      source  = "scaleway/scaleway"
      version = "~> 2.27"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0"
    }
  }
}
