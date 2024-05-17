## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.38 |
| <a name="requirement_time"></a> [time](#requirement\_time) | ~> 0.11 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 5.38 |
| <a name="provider_time"></a> [time](#provider\_time) | ~> 0.11 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [time_static.current](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_criticality"></a> [aws\_criticality](#input\_aws\_criticality) | The criticality of AWS environment | `string` | `"critical"` | no |
| <a name="input_aws_environment"></a> [aws\_environment](#input\_aws\_environment) | The name of AWS environment | `string` | `"production"` | no |
| <a name="input_client_name"></a> [client\_name](#input\_client\_name) | The name of the client | `string` | `"nuageit"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_criticality"></a> [aws\_criticality](#output\_aws\_criticality) | Normalized aws\_criticality |
| <a name="output_aws_environment"></a> [aws\_environment](#output\_aws\_environment) | Normalized aws\_environment |
| <a name="output_client_name"></a> [client\_name](#output\_client\_name) | Normalized client name |
