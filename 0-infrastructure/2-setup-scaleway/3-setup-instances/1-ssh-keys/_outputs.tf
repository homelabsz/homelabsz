output "ssh_key" {
  value = {
    zone = {
      id              = scaleway_account_ssh_key.pocs_services_001.id
      created_at      = scaleway_account_ssh_key.pocs_services_001.created_at
      organization_id = scaleway_account_ssh_key.pocs_services_001.organization_id
      fingerprint     = scaleway_account_ssh_key.pocs_services_001.fingerprint
    }
  }
  description = "Output SSH Key information"
}
