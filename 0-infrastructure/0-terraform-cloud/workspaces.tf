# Project Cloudflare
resource "tfe_workspace" "lpsm_dev" {
  name         = "setup-cloudflare-lpsm-dev"
  organization = data.tfe_organization.this.name
  project_id   = tfe_project.cloudflare.id
  tag_names    = ["dns"]
  lifecycle {
    prevent_destroy = true
  }
}

resource "tfe_workspace" "lpsm_cloud" {
  name         = "setup-cloudflare-lpsm-cloud"
  organization = data.tfe_organization.this.name
  project_id   = tfe_project.cloudflare.id
  tag_names    = ["dns"]
  lifecycle {
    prevent_destroy = true
  }
}

# Project Scaleway
resource "tfe_workspace" "scaleway_account" {
  name           = "setup-scaleway-account"
  organization   = data.tfe_organization.this.name
  project_id     = tfe_project.scaleway.id
  execution_mode = "local"
  lifecycle {
    prevent_destroy = true
  }
}

resource "tfe_workspace" "scaleway_kubernetes" {
  name         = "setup-scaleway-kubernetes"
  organization = data.tfe_organization.this.name
  project_id   = tfe_project.scaleway.id
  execution_mode = "local"
  lifecycle {
    prevent_destroy = true
  }
}

resource "tfe_workspace" "scaleway_rancher" {
  name         = "setup-scaleway-instances-rancher"
  organization = data.tfe_organization.this.name
  project_id   = tfe_project.scaleway.id
  lifecycle {
    prevent_destroy = true
  }
}

# Project AWS
resource "tfe_workspace" "aws_account" {
  name         = "setup-aws-account"
  organization = data.tfe_organization.this.name
  project_id   = tfe_project.aws.id
  tag_names    = ["cloud-provider"]
  lifecycle {
    prevent_destroy = true
  }
}

resource "tfe_workspace" "aws_network" {
  name         = "setup-aws-network"
  organization = data.tfe_organization.this.name
  project_id   = tfe_project.aws.id
  tag_names    = ["cloud-provider", "network"]
  lifecycle {
    prevent_destroy = true
  }
}

resource "tfe_workspace" "aws_dns" {
  name         = "setup-aws-dns"
  organization = data.tfe_organization.this.name
  project_id   = tfe_project.aws.id
  tag_names    = ["cloud-provider", "dns"]
  lifecycle {
    prevent_destroy = true
  }
}

resource "tfe_workspace" "aws_bastion_linux" {
  name         = "setup-aws-instances-bastion-linux"
  organization = data.tfe_organization.this.name
  project_id   = tfe_project.aws.id
  tag_names    = ["cloud-provider", "instances", "bastion", "linux"]
  lifecycle {
    prevent_destroy = true
  }
}

resource "tfe_workspace" "aws_bastion_windows" {
  name         = "setup-aws-instances-bastion-windows"
  organization = data.tfe_organization.this.name
  project_id   = tfe_project.aws.id
  tag_names    = ["cloud-provider", "instances", "bastion", "windows"]
  lifecycle {
    prevent_destroy = true
  }
}

resource "tfe_workspace" "aws_gitlab_server" {
  name         = "setup-aws-instances-gitlab-server"
  organization = data.tfe_organization.this.name
  project_id   = tfe_project.aws.id
  tag_names    = ["cloud-provider", "instances", "gitlab"]
  lifecycle {
    prevent_destroy = true
  }
}

resource "tfe_workspace" "aws_gitlab_runner" {
  name         = "setup-aws-instances-gitlab-runner"
  organization = data.tfe_organization.this.name
  project_id   = tfe_project.aws.id
  tag_names    = ["cloud-provider", "instances", "gitlab"]
  lifecycle {
    prevent_destroy = true
  }
}

resource "tfe_workspace" "aws_rancher" {
  name         = "setup-aws-instances-rancher"
  organization = data.tfe_organization.this.name
  project_id   = tfe_project.aws.id
  tag_names    = ["cloud-provider", "instances", "rancher"]
  lifecycle {
    prevent_destroy = true
  }
}

resource "tfe_workspace" "aws_kubernetes" {
  name         = "setup-aws-kubernetes"
  organization = data.tfe_organization.this.name
  project_id   = tfe_project.aws.id
  tag_names    = ["cloud-provider", "kubernetes"]
  lifecycle {
    prevent_destroy = true
  }
}

resource "tfe_workspace" "aws_services_rabbit" {
  name         = "setup-aws-services-rabbit"
  organization = data.tfe_organization.this.name
  project_id   = tfe_project.aws.id
  tag_names    = ["cloud-provider", "cloud-services", "queue"]
  lifecycle {
    prevent_destroy = true
  }
}

resource "tfe_workspace" "aws_services_rds" {
  name         = "setup-aws-services-rds"
  organization = data.tfe_organization.this.name
  project_id   = tfe_project.aws.id
  tag_names    = ["cloud-provider", "cloud-services", "database"]
  lifecycle {
    prevent_destroy = true
  }
}

resource "tfe_workspace" "aws_services_security_hub" {
  name         = "setup-aws-services-security-hub"
  organization = data.tfe_organization.this.name
  project_id   = tfe_project.aws.id
  tag_names    = ["cloud-provider", "cloud-services", "security"]
  lifecycle {
    prevent_destroy = true
  }
}
