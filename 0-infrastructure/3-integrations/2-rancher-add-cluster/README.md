## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.5 |
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
| [rancher2_namespace.argocd](https://registry.terraform.io/providers/rancher/rancher2/latest/docs/resources/namespace) | resource |
| [rancher2_namespace.demo](https://registry.terraform.io/providers/rancher/rancher2/latest/docs/resources/namespace) | resource |
| [rancher2_namespace.external_dns](https://registry.terraform.io/providers/rancher/rancher2/latest/docs/resources/namespace) | resource |
| [rancher2_namespace.external_secrets](https://registry.terraform.io/providers/rancher/rancher2/latest/docs/resources/namespace) | resource |
| [rancher2_namespace.gitlab_runner](https://registry.terraform.io/providers/rancher/rancher2/latest/docs/resources/namespace) | resource |
| [rancher2_namespace.kubernetes_replicator](https://registry.terraform.io/providers/rancher/rancher2/latest/docs/resources/namespace) | resource |
| [rancher2_namespace.monitoring](https://registry.terraform.io/providers/rancher/rancher2/latest/docs/resources/namespace) | resource |
| [rancher2_namespace.reloader](https://registry.terraform.io/providers/rancher/rancher2/latest/docs/resources/namespace) | resource |
| [rancher2_namespace.sonarqube](https://registry.terraform.io/providers/rancher/rancher2/latest/docs/resources/namespace) | resource |
| [rancher2_project.devops](https://registry.terraform.io/providers/rancher/rancher2/latest/docs/resources/project) | resource |
| [rancher2_project.gitops](https://registry.terraform.io/providers/rancher/rancher2/latest/docs/resources/project) | resource |
| [rancher2_project.homelab](https://registry.terraform.io/providers/rancher/rancher2/latest/docs/resources/project) | resource |
| [rancher2_project.monitoring](https://registry.terraform.io/providers/rancher/rancher2/latest/docs/resources/project) | resource |
| [rancher2_project.system](https://registry.terraform.io/providers/rancher/rancher2/latest/docs/data-sources/project) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_kubeconfig_context_name"></a> [kubeconfig\_context\_name](#input\_kubeconfig\_context\_name) | Context name used in your kubeconfig | `string` | `""` | no |
| <a name="input_rancher_api_url"></a> [rancher\_api\_url](#input\_rancher\_api\_url) | Rancher API url | `string` | `""` | no |
| <a name="input_rancher_token"></a> [rancher\_token](#input\_rancher\_token) | Rancher API token key to connect to rancher | `string` | `""` | no |

## Outputs

No outputs.
