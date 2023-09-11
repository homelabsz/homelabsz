resource "gitlab_group" "groups" {
  for_each         = local.gitlab_groups
  name             = each.value.path
  path             = each.value.path
  parent_id        = each.value.parent_id
  visibility_level = "private"
}
