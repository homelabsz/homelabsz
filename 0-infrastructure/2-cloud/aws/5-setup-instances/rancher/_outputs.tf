output "instance_id" {
  value = aws_instance.rancher_server.id
}

output "secretsmanager_secret" {
  value = aws_secretsmanager_secret.ssh.id
}

output "secretsmanager_secret_version" {
  value = aws_secretsmanager_secret_version.ssh.id
}
