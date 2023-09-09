variable "github_token" {
  type        = string
  description = "A GitHub OAuth / Personal Access Token"
  default     = ""
  sensitive   = true
}

variable "gitlab_token" {
  type        = string
  description = "The OAuth2 Token, Project, Group, Personal Access Token or CI Job Token used to connect to GitLab"
  default     = ""
  sensitive   = true
}
