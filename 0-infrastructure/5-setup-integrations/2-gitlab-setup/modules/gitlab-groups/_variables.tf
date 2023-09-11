variable "gitlab_groups" {
  type = list(object({
    path   = string
    parent = string
  }))
  description = "The list of Gitlab groups to create based on parent"
}
