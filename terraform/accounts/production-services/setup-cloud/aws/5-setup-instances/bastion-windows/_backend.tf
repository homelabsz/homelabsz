terraform {
  backend "remote" {
    organization = "lpsm-dev"
    workspaces {
      name = "setup-aws-instances-bastion-windows"
    }
  }
}
