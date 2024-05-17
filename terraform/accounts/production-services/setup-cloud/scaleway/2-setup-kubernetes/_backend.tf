terraform {
  backend "remote" {
    organization = "lpsm-dev"
    workspaces {
      name = "setup-scaleway-kubernetes"
    }
  }
}
