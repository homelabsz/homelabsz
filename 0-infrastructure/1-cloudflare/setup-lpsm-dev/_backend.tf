terraform {
  backend "remote" {
    organization = "lpsm-dev"
    workspaces {
      name = "setup-cloudflare-lpsm-dev"
    }
  }
}
