provider "github" {
  token = var.github_token
}

provider "gitlab" {
  base_url = "https://gitlab.com/api/v4/"
  token    = var.gitlab_token
  insecure = false
}

provider "tls" {}
