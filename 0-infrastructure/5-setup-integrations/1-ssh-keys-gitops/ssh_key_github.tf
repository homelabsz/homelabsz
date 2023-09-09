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
