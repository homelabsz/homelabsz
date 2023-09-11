locals {
  gitlab_groups = {
    for group in var.gitlab_groups :
    "${group.parent}/${group.path}" => merge(group, {
      parent_id = data.gitlab_group.parents[group.parent].id
      fullname  = "${group.parent}/${group.path}"
    })
  }
}
