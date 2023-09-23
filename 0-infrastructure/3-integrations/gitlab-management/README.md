## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.5 |
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | ~> 16.3 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_gitlab_group_iac"></a> [gitlab\_group\_iac](#module\_gitlab\_group\_iac) | ./modules/gitlab-groups | n/a |
| <a name="module_gitlab_group_kubeops"></a> [gitlab\_group\_kubeops](#module\_gitlab\_group\_kubeops) | ./modules/gitlab-groups | n/a |
| <a name="module_gitlab_group_kubeops_helm"></a> [gitlab\_group\_kubeops\_helm](#module\_gitlab\_group\_kubeops\_helm) | ./modules/gitlab-groups | n/a |
| <a name="module_gitlab_group_libs"></a> [gitlab\_group\_libs](#module\_gitlab\_group\_libs) | ./modules/gitlab-groups | n/a |
| <a name="module_gitlab_group_members"></a> [gitlab\_group\_members](#module\_gitlab\_group\_members) | ./modules/gitlab-groups | n/a |
| <a name="module_gitlab_group_root"></a> [gitlab\_group\_root](#module\_gitlab\_group\_root) | ./modules/gitlab-groups | n/a |
| <a name="module_gitlab_group_shared"></a> [gitlab\_group\_shared](#module\_gitlab\_group\_shared) | ./modules/gitlab-groups | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_gitlab_token"></a> [gitlab\_token](#input\_gitlab\_token) | The OAuth2 Token, Project, Group, Personal Access Token or CI Job Token used to connect to GitLab | `string` | `"value"` | no |
| <a name="input_gitlab_url"></a> [gitlab\_url](#input\_gitlab\_url) | This is the target GitLab base API endpoint | `string` | `"https://gitlab.com/api/v4/"` | no |

## Outputs

No outputs.
