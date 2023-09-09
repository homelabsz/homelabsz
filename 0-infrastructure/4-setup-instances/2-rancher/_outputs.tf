output "rancher_instance_id" {
  value       = scaleway_instance_server.rancher.id
  description = "Retrive Rancher instance ID"
}

output "rancher_public_ip" {
  value       = ["https://${scaleway_instance_server.rancher.public_ip}"]
  description = "Retrive Rancher public IP"
}

output "rancher_ssh_connection" {
  value       = "ssh -vvv -i pocs-services root@${scaleway_instance_server.rancher.public_ip}"
  description = "SSH connection to Rancher instance"
}
