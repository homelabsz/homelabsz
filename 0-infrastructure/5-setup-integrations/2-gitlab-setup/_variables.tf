variable "gitlab_url" {
  type        = string
  description = "This is the target GitLab base API endpoint"
  default     = "https://gitlab.com/api/v4/"
}

variable "gitlab_token" {
  type        = string
  description = "The OAuth2 Token, Project, Group, Personal Access Token or CI Job Token used to connect to GitLab"
  default     = "value"
  sensitive   = true
}
