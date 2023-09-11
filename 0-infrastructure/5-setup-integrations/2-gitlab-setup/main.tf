module "gitlab_group_root" {
  source  = "gitlab.com/nuageit/tf-gitlab-groups/local"
  version = "1.0.0"

  gitlab_groups = [
    { path = "devops", parent = "nuageit-automation" },
    { path = "iac", parent = "nuageit-automation" },
    { path = "kubeops", parent = "nuageit-automation" },
    { path = "shared", parent = "nuageit-automation" },
    { path = "members", parent = "nuageit-automation" }
  ]
}

module "gitlab_group_shared" {
  source  = "gitlab.com/nuageit/tf-gitlab-groups/local"
  version = "1.0.0"

  gitlab_groups = [
    { path = "demo", parent = "nuageit-automation/shared" },
    { path = "pocs", parent = "nuageit-automation/shared" }
  ]

  depends_on = [
    module.gitlab_group_root
  ]
}

module "gitlab_group_kubeops" {
  source  = "gitlab.com/nuageit/tf-gitlab-groups/local"
  version = "1.0.0"

  gitlab_groups = [
    { path = "helm", parent = "nuageit-automation/kubeops" },
  ]

  depends_on = [
    module.gitlab_group_root
  ]
}

module "gitlab_group_members" {
  source  = "gitlab.com/nuageit/tf-gitlab-groups/local"
  version = "1.0.0"

  gitlab_groups = [
    { path = "squad-devs", parent = "nuageit-automation/members" },
    { path = "squad-leaders", parent = "nuageit-automation/members" },
    { path = "squad-devops", parent = "nuageit-automation/members" },
    { path = "squad-cloud", parent = "nuageit-automation/members" },
    { path = "squad-po", parent = "nuageit-automation/members" },
    { path = "squad-quality", parent = "nuageit-automation/members" }
  ]

  depends_on = [
    module.gitlab_group_root
  ]
}

module "gitlab_group_iac" {
  source  = "gitlab.com/nuageit/tf-gitlab-groups/local"
  version = "1.0.0"

  gitlab_groups = [
    { path = "accounts", parent = "nuageit-automation/iac" },
    { path = "resources", parent = "nuageit-automation/iac" },
    { path = "modules", parent = "nuageit-automation/iac" },
  ]

  depends_on = [
    module.gitlab_group_root
  ]
}
