## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.5 |
| <a name="requirement_rancher2"></a> [rancher2](#requirement\_rancher2) | ~> 3.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_rancher2"></a> [rancher2](#provider\_rancher2) | 3.1.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [rancher2_auth_config_github.github](https://registry.terraform.io/providers/rancher/rancher2/latest/docs/resources/auth_config_github) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_github_allowed_principal_ids"></a> [github\_allowed\_principal\_ids](#input\_github\_allowed\_principal\_ids) | Allowed principal ids for auth | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| <a name="input_github_client_id"></a> [github\_client\_id](#input\_github\_client\_id) | Github auth Client ID | `string` | `""` | no |
| <a name="input_github_client_secret"></a> [github\_client\_secret](#input\_github\_client\_secret) | Github auth Client secret | `string` | `""` | no |
| <a name="input_rancher_api_url"></a> [rancher\_api\_url](#input\_rancher\_api\_url) | Rancher API url | `string` | `""` | no |
| <a name="input_rancher_token"></a> [rancher\_token](#input\_rancher\_token) | Rancher API token key to connect to rancher | `string` | `""` | no |

## Outputs

No outputs.
