## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.17.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_securityhub_account.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/securityhub_account) | resource |
| [aws_securityhub_finding_aggregator.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/securityhub_finding_aggregator) | resource |
| [aws_securityhub_product_subscription.aqua_security_kube_bench](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/securityhub_product_subscription) | resource |
| [aws_securityhub_standards_subscription.aws_foundational](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/securityhub_standards_subscription) | resource |
| [aws_securityhub_standards_subscription.cis](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/securityhub_standards_subscription) | resource |
| [aws_securityhub_standards_subscription.pci_dss](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/securityhub_standards_subscription) | resource |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enable_aws_foundational_standard"></a> [enable\_aws\_foundational\_standard](#input\_enable\_aws\_foundational\_standard) | Boolean whether AWS Foundations standard is enabled. | `bool` | `true` | no |
| <a name="input_enable_cis_standard"></a> [enable\_cis\_standard](#input\_enable\_cis\_standard) | Boolean whether CIS standard is enabled. | `bool` | `true` | no |
| <a name="input_enable_pci_dss_standard"></a> [enable\_pci\_dss\_standard](#input\_enable\_pci\_dss\_standard) | Boolean whether PCI DSS standard is enabled. | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | AWS environment name | `string` | `"pocs"` | no |
| <a name="input_region"></a> [region](#input\_region) | AWS region where the provider will operate | `string` | `"us-east-1"` | no |

## Outputs

No outputs.
