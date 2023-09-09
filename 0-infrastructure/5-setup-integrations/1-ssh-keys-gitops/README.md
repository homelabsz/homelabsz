## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 5.35 |
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | ~> 16.3 |
| <a name="requirement_local"></a> [local](#requirement\_local) | ~> 2.4 |
| <a name="requirement_scaleway"></a> [scaleway](#requirement\_scaleway) | ~> 2.27 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | 5.35.0 |
| <a name="provider_gitlab"></a> [gitlab](#provider\_gitlab) | 16.3.0 |
| <a name="provider_local"></a> [local](#provider\_local) | 2.4.0 |
| <a name="provider_scaleway"></a> [scaleway](#provider\_scaleway) | 2.28.0 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | 4.0.4 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_user_ssh_key.gitops](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/user_ssh_key) | resource |
| [gitlab_deploy_key.gitops](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/deploy_key) | resource |
| [gitlab_project.homelabsz](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/project) | resource |
| [local_file.ssh_key_github_public_pem](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [local_file.ssh_key_gitlab_public_pem](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [local_sensitive_file.ssh_key_github_private_pem](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/sensitive_file) | resource |
| [local_sensitive_file.ssh_key_gitlab_private_pem](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/sensitive_file) | resource |
| [scaleway_secret.ssh_key_github_private](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/resources/secret) | resource |
| [scaleway_secret.ssh_key_github_public](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/resources/secret) | resource |
| [scaleway_secret.ssh_key_gitlab_private](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/resources/secret) | resource |
| [scaleway_secret.ssh_key_gitlab_public](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/resources/secret) | resource |
| [scaleway_secret_version.ssh_key_github_private](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/resources/secret_version) | resource |
| [scaleway_secret_version.ssh_key_github_public](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/resources/secret_version) | resource |
| [scaleway_secret_version.ssh_key_gitlab_private](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/resources/secret_version) | resource |
| [scaleway_secret_version.ssh_key_gitlab_public](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/resources/secret_version) | resource |
| [tls_private_key.ssh_key_giltab](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |
| [tls_private_key.ssh_key_github](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |
| [gitlab_group.homelabsz](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/data-sources/group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_github_token"></a> [github\_token](#input\_github\_token) | A GitHub OAuth / Personal Access Token | `string` | `""` | no |
| <a name="input_gitlab_token"></a> [gitlab\_token](#input\_gitlab\_token) | The OAuth2 Token, Project, Group, Personal Access Token or CI Job Token used to connect to GitLab | `string` | `""` | no |
| <a name="input_organization_id"></a> [organization\_id](#input\_organization\_id) | Scaleway organization ID that will be used as default value for organization-scoped resources | `string` | `""` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Scaleway project ID that will be used as default value for project-scoped resources | `string` | `""` | no |
| <a name="input_region"></a> [region](#input\_region) | Scaleway region that will be used as default value for all resources | `string` | `"fr-par"` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | Scaleway zone that will be used as default value for all resources | `string` | `"fr-par-1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ssh_key_github"></a> [ssh\_key\_github](#output\_ssh\_key\_github) | Output with some information about SSH Key created to GitHub |
| <a name="output_ssh_key_gitlab"></a> [ssh\_key\_gitlab](#output\_ssh\_key\_gitlab) | Output with some information about SSH Key created to GitLab |
