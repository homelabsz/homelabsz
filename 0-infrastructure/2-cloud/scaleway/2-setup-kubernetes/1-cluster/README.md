## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_local"></a> [local](#requirement\_local) | ~> 2.4 |
| <a name="requirement_null"></a> [null](#requirement\_null) | ~> 3.2 |
| <a name="requirement_scaleway"></a> [scaleway](#requirement\_scaleway) | ~> 2.27 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_local"></a> [local](#provider\_local) | 2.4.0 |
| <a name="provider_null"></a> [null](#provider\_null) | 3.2.1 |
| <a name="provider_scaleway"></a> [scaleway](#provider\_scaleway) | 2.28.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [local_file.kubeconfig](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [null_resource.kubeconfig](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [scaleway_k8s_cluster.pocs_services](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/resources/k8s_cluster) | resource |
| [scaleway_k8s_pool.pocs_services](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/resources/k8s_pool) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_key"></a> [access\_key](#input\_access\_key) | Scaleway access key | `string` | `""` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Name of the Kubernetes cluster | `string` | `""` | no |
| <a name="input_cluster_version"></a> [cluster\_version](#input\_cluster\_version) | Kubernetes cluster version | `string` | `"1.28"` | no |
| <a name="input_organization_id"></a> [organization\_id](#input\_organization\_id) | Scaleway organization ID that will be used as default value for organization-scoped resources | `string` | `""` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Scaleway project ID that will be used as default value for project-scoped resources | `string` | `""` | no |
| <a name="input_region"></a> [region](#input\_region) | Scaleway region that will be used as default value for all resources | `string` | `"fr-par"` | no |
| <a name="input_secret_key"></a> [secret\_key](#input\_secret\_key) | Scaleway secret key | `string` | `""` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | Scaleway zone that will be used as default value for all resources | `string` | `"fr-par-1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_kubernetes_api_server_url"></a> [kubernetes\_api\_server\_url](#output\_kubernetes\_api\_server\_url) | The URL of the Kubernetes API server |
