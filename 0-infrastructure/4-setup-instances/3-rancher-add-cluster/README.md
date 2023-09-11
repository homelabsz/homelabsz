## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_null"></a> [null](#requirement\_null) | ~> 3.2 |
| <a name="requirement_rancher2"></a> [rancher2](#requirement\_rancher2) | ~> 3.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_null"></a> [null](#provider\_null) | 3.2.1 |
| <a name="provider_rancher2"></a> [rancher2](#provider\_rancher2) | 3.1.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [null_resource.context](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [null_resource.rancher](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [rancher2_cluster.pocs_services](https://registry.terraform.io/providers/rancher/rancher2/latest/docs/resources/cluster) | resource |
| [rancher2_project.devops](https://registry.terraform.io/providers/rancher/rancher2/latest/docs/resources/project) | resource |
| [rancher2_project.homelad](https://registry.terraform.io/providers/rancher/rancher2/latest/docs/resources/project) | resource |
| [rancher2_project.monitoring](https://registry.terraform.io/providers/rancher/rancher2/latest/docs/resources/project) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_kubeconfig_context_name"></a> [kubeconfig\_context\_name](#input\_kubeconfig\_context\_name) | Context name used in your kubeconfig | `string` | `""` | no |
| <a name="input_rancher_api_url"></a> [rancher\_api\_url](#input\_rancher\_api\_url) | Rancher API url | `string` | `""` | no |
| <a name="input_rancher_token"></a> [rancher\_token](#input\_rancher\_token) | Rancher API token key to connect to rancher | `string` | `""` | no |

## Outputs

No outputs.
