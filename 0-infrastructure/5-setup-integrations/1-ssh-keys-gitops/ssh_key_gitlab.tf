resource "tls_private_key" "ssh_key_giltab" {
  algorithm = "ED25519"
}

resource "local_sensitive_file" "ssh_key_gitlab_private_pem" {
  filename        = "${path.module}/ssh-gitlab-gitops"
  content         = tls_private_key.ssh_key_giltab.private_key_openssh
  file_permission = "0600"
}

resource "local_file" "ssh_key_gitlab_public_pem" {
  filename = "${path.module}/ssh-gitlab-gitops.pub"
  content  = tls_private_key.ssh_key_giltab.public_key_openssh
}

data "gitlab_group" "homelabsz" {
  full_path = "homelabsz"
}

resource "gitlab_project" "homelabsz" {
  name             = "homelabsz"
  description      = "Setup homelab project with Terraform + Kubernetes + Gitops initial in Scaleway"
  visibility_level = "private"
  namespace_id     = data.gitlab_group.homelabsz.id
}

resource "gitlab_deploy_key" "gitops" {
  project = gitlab_project.homelabsz.id
  title   = "GitOps GitLab ArgoCD SSH-Key"
  key     = tls_private_key.ssh_key_giltab.public_key_openssh
}

resource "scaleway_secret" "ssh_key_gitlab_private" {
  name        = "ssh_key_gitlab_private"
  description = "GitOps GitLab ArgoCD SSH-Key private"
  tags        = ["terraform"]
}

resource "scaleway_secret_version" "ssh_key_gitlab_private" {
  secret_id = scaleway_secret.ssh_key_gitlab_private.id
  data      = tls_private_key.ssh_key_giltab.private_key_openssh
}

resource "scaleway_secret" "ssh_key_gitlab_public" {
  name        = "ssh_key_gitlab_public"
  description = "GitOps GitLab ArgoCD SSH-Key public"
  tags        = ["terraform"]
}

resource "scaleway_secret_version" "ssh_key_gitlab_public" {
  secret_id = scaleway_secret.ssh_key_gitlab_public.id
  data      = tls_private_key.ssh_key_giltab.public_key_openssh
}
