resource "tls_private_key" "ssh" {
  algorithm = "ED25519"
}

resource "local_sensitive_file" "ssh_private_key_pem" {
  filename        = "${path.module}/pocs-services"
  content         = tls_private_key.ssh.private_key_openssh
  file_permission = "0600"
}

resource "local_file" "ssh_public_key_openssh" {
  filename = "${path.module}/pocs-services.pub"
  content  = tls_private_key.ssh.public_key_openssh
}

resource "scaleway_account_ssh_key" "pocs_services_001" {
  name       = "pocs-services-001"
  public_key = tls_private_key.ssh.public_key_openssh
}
