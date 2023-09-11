module "gitlab_group_root" {
  source = "./modules/gitlab-groups"

  gitlab_groups = [
    { path = "iac", parent = "homelabsz" },
    { path = "kubeops", parent = "homelabsz" },
    { path = "libs", parent = "homelabsz" },
    { path = "shared", parent = "homelabsz" },
    { path = "members", parent = "homelabsz" }
  ]
}

module "gitlab_group_iac" {
  source = "./modules/gitlab-groups"

  gitlab_groups = [
    { path = "accounts", parent = "homelabsz/iac" },
    { path = "resources", parent = "homelabsz/iac" },
    { path = "modules", parent = "homelabsz/iac" },
  ]

  depends_on = [
    module.gitlab_group_root
  ]
}

module "gitlab_group_kubeops" {
  source = "./modules/gitlab-groups"

  gitlab_groups = [
    { path = "helm", parent = "homelabsz/kubeops" },
  ]

  depends_on = [
    module.gitlab_group_root
  ]
}

module "gitlab_group_kubeops_helm" {
  source = "./modules/gitlab-groups"

  gitlab_groups = [
    { path = "applications", parent = "homelabsz/kubeops/helm" },
    { path = "libs", parent = "homelabsz/kubeops/helm" },
  ]

  depends_on = [
    module.gitlab_group_root,
    module.gitlab_group_kubeops
  ]
}

module "gitlab_group_libs" {
  source = "./modules/gitlab-groups"

  gitlab_groups = [
    { path = "npm", parent = "homelabsz/libs" },
    { path = "pip", parent = "homelabsz/libs" },
  ]

  depends_on = [
    module.gitlab_group_root
  ]
}

module "gitlab_group_shared" {
  source = "./modules/gitlab-groups"

  gitlab_groups = [
    { path = "demo", parent = "homelabsz/shared" },
    { path = "pocs", parent = "homelabsz/shared" }
  ]

  depends_on = [
    module.gitlab_group_root
  ]
}

module "gitlab_group_members" {
  source = "./modules/gitlab-groups"

  gitlab_groups = [
    { path = "squad-devs", parent = "homelabsz/members" },
    { path = "squad-leaders", parent = "homelabsz/members" },
    { path = "squad-devops", parent = "homelabsz/members" },
    { path = "squad-cloud", parent = "homelabsz/members" },
    { path = "squad-po", parent = "homelabsz/members" },
    { path = "squad-quality", parent = "homelabsz/members" }
  ]

  depends_on = [
    module.gitlab_group_root
  ]
}
