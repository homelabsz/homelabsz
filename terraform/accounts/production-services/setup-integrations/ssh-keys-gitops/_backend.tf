terraform {
  backend "remote" {
    organization = "lpsm-dev"
    workspaces {
      name = "setup-integrations-ssh-key-gitops"
    }
  }
}
