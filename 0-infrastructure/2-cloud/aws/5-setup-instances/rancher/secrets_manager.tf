resource "aws_secretsmanager_secret" "ssh" {
  name        = "/ssh/${var.region}-rancher"
  description = "SSH key for Rancher instance"
}

resource "aws_secretsmanager_secret_version" "ssh" {
  secret_id     = aws_secretsmanager_secret.ssh.id
  secret_string = tls_private_key.this.private_key_pem
}
