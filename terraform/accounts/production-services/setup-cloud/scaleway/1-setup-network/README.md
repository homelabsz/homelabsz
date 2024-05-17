## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_scaleway"></a> [scaleway](#requirement\_scaleway) | ~> 2.27 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_scaleway"></a> [scaleway](#provider\_scaleway) | 2.28.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [scaleway_vpc_gateway_network.this](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/resources/vpc_gateway_network) | resource |
| [scaleway_vpc_private_network.this](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/resources/vpc_private_network) | resource |
| [scaleway_vpc_public_gateway.this](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/resources/vpc_public_gateway) | resource |
| [scaleway_vpc_public_gateway_dhcp.this](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/resources/vpc_public_gateway_dhcp) | resource |
| [scaleway_vpc_public_gateway_ip.this](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/resources/vpc_public_gateway_ip) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_organization_id"></a> [organization\_id](#input\_organization\_id) | Scaleway organization ID that will be used as default value for organization-scoped resources | `string` | `""` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Scaleway project ID that will be used as default value for project-scoped resources | `string` | `""` | no |
| <a name="input_region"></a> [region](#input\_region) | Scaleway region that will be used as default value for all resources | `string` | `"fr-par"` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | Scaleway zone that will be used as default value for all resources | `string` | `"fr-par-1"` | no |

## Outputs

No outputs.
