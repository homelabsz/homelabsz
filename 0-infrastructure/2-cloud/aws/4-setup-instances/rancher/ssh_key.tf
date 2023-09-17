resource "tls_private_key" "ssh_key_rancher" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "local_sensitive_file" "ssh_key_private_pem" {
  filename        = "${path.module}/ssh-aws-instances-rancher"
  content         = tls_private_key.ssh_key_rancher.private_key_openssh
  file_permission = "0600"
}

resource "local_file" "ssh_key_public_pem" {
  filename = "${path.module}/ssh-aws-instances-rancher.pub"
  content  = tls_private_key.ssh_key_rancher.public_key_openssh
}

resource "aws_key_pair" "ssh_key_rancher" {
  key_name_prefix = "ssh-aws-instances-rancher"
  public_key      = tls_private_key.ssh_key_rancher.public_key_openssh
}
