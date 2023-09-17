terraform {
  backend "remote" {
    organization = "lpsm-dev"
    workspaces {
      name = "setup-aws-lambda-secret-rotation-generic"
    }
  }
}
