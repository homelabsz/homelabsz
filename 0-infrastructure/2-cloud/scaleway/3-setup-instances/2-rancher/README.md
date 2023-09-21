## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | ~> 4.14 |
| <a name="requirement_scaleway"></a> [scaleway](#requirement\_scaleway) | ~> 2.27 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | 4.14.0 |
| <a name="provider_scaleway"></a> [scaleway](#provider\_scaleway) | 2.28.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudflare_record.rancher](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/record) | resource |
| [scaleway_instance_ip.rancher](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/resources/instance_ip) | resource |
| [scaleway_instance_security_group.rancher](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/resources/instance_security_group) | resource |
| [scaleway_instance_server.rancher](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/resources/instance_server) | resource |
| [cloudflare_zone.lpsm_dev](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/data-sources/zone) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_key"></a> [access\_key](#input\_access\_key) | Scaleway access key | `string` | `""` | no |
| <a name="input_cloudflare_api_token"></a> [cloudflare\_api\_token](#input\_cloudflare\_api\_token) | The API Token for operations | `string` | `""` | no |
| <a name="input_cloudflare_zone_name"></a> [cloudflare\_zone\_name](#input\_cloudflare\_zone\_name) | The DNS zone name in Cloudflare | `string` | `"lpsm.cloud"` | no |
| <a name="input_organization_id"></a> [organization\_id](#input\_organization\_id) | Scaleway organization ID that will be used as default value for organization-scoped resources | `string` | `""` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Scaleway project ID that will be used as default value for project-scoped resources | `string` | `""` | no |
| <a name="input_rancher_admin_password"></a> [rancher\_admin\_password](#input\_rancher\_admin\_password) | Rancher admin password | `string` | `""` | no |
| <a name="input_rancher_server_url"></a> [rancher\_server\_url](#input\_rancher\_server\_url) | Rancher Server URL | `string` | `""` | no |
| <a name="input_rancher_version"></a> [rancher\_version](#input\_rancher\_version) | Rancher version | `string` | `"v2.7.4"` | no |
| <a name="input_region"></a> [region](#input\_region) | Scaleway region that will be used as default value for all resources | `string` | `"fr-par"` | no |
| <a name="input_secret_key"></a> [secret\_key](#input\_secret\_key) | Scaleway secret key | `string` | `""` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | Scaleway zone that will be used as default value for all resources | `string` | `"fr-par-1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_rancher_instance_id"></a> [rancher\_instance\_id](#output\_rancher\_instance\_id) | Retrive Rancher instance ID |
| <a name="output_rancher_public_ip"></a> [rancher\_public\_ip](#output\_rancher\_public\_ip) | Retrive Rancher public IP |
| <a name="output_rancher_ssh_connection"></a> [rancher\_ssh\_connection](#output\_rancher\_ssh\_connection) | SSH connection to Rancher instance |
