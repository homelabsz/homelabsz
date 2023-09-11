provider "gitlab" {
  token    = var.gitlab_token
  base_url = var.gitlab_url
  insecure = false
}
