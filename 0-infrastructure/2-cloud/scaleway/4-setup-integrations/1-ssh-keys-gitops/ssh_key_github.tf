resource "tls_private_key" "ssh_key_github" {
  algorithm = "ED25519"
}

resource "local_sensitive_file" "ssh_key_github_private_pem" {
  filename        = "${path.module}/ssh-github-gitops"
  content         = tls_private_key.ssh_key_github.private_key_openssh
  file_permission = "0600"
}

resource "local_file" "ssh_key_github_public_pem" {
  filename = "${path.module}/ssh-github-gitops.pub"
  content  = tls_private_key.ssh_key_github.public_key_openssh
}

resource "github_user_ssh_key" "gitops" {
  title = "GitOps GitHub ArgoCD SSH-Key"
  key   = tls_private_key.ssh_key_github.public_key_openssh
}

resource "scaleway_secret" "ssh_key_github_private" {
  name        = "ssh_key_github_private"
  description = "GitOps GitHub ArgoCD SSH-Key private"
  tags        = ["terraform"]
}

resource "scaleway_secret_version" "ssh_key_github_private" {
  secret_id = scaleway_secret.ssh_key_github_private.id
  data      = tls_private_key.ssh_key_github.private_key_openssh
}

resource "scaleway_secret" "ssh_key_github_public" {
  name        = "ssh_key_github_public"
  description = "GitOps GitHub ArgoCD SSH-Key public"
  tags        = ["terraform"]
}

resource "scaleway_secret_version" "ssh_key_github_public" {
  secret_id = scaleway_secret.ssh_key_github_public.id
  data      = tls_private_key.ssh_key_github.public_key_openssh
}
