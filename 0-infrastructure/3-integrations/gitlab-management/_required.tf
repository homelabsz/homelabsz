terraform {
  required_version = "~> 1.5"
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = "~> 16.3"
    }
  }
}
