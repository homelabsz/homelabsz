terraform {
  backend "remote" {
    organization = "lpsm-dev"
    workspaces {
      name = "setup-integrations-rancher-add-cluster"
    }
  }
}
