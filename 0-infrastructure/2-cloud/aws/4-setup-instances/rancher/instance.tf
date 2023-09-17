resource "aws_instance" "rancher_server" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3a.medium"
  key_name      = aws_key_pair.ssh_key_rancher.key_name
  user_data = templatefile("${path.module}/files/rancher_server", {
    admin_password        = var.rancher_admin_password
    docker_version_server = "20.10"
    rancher_version       = var.rancher_version
    rancher_server_url    = var.rancher_server_url
  })
  iam_instance_profile = var.instance_profile

  vpc_security_group_ids = [
    aws_security_group.rancher.id
  ]
  subnet_id                   = data.aws_subnet.this.id
  associate_public_ip_address = true

  root_block_device {
    delete_on_termination = true
    volume_type           = "gp3"
    volume_size           = "32"
  }

  tags = {
    Name = "rancher-server"
  }

  lifecycle {
    create_before_destroy = true
  }
}
