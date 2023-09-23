data "gitlab_group" "parents" {
  for_each  = toset([for k, v in var.gitlab_groups : v.parent])
  full_path = each.value
}
