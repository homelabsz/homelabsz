terraform {
  required_version = "~> 1.3"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.35"
    }
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = "~> 16.3"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4"
    }
  }
}
