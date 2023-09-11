## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_gitlab_group_iac"></a> [gitlab\_group\_iac](#module\_gitlab\_group\_iac) | gitlab.com/nuageit/tf-gitlab-groups/local | 1.0.0 |
| <a name="module_gitlab_group_kubeops"></a> [gitlab\_group\_kubeops](#module\_gitlab\_group\_kubeops) | gitlab.com/nuageit/tf-gitlab-groups/local | 1.0.0 |
| <a name="module_gitlab_group_members"></a> [gitlab\_group\_members](#module\_gitlab\_group\_members) | gitlab.com/nuageit/tf-gitlab-groups/local | 1.0.0 |
| <a name="module_gitlab_group_root"></a> [gitlab\_group\_root](#module\_gitlab\_group\_root) | gitlab.com/nuageit/tf-gitlab-groups/local | 1.0.0 |
| <a name="module_gitlab_group_shared"></a> [gitlab\_group\_shared](#module\_gitlab\_group\_shared) | gitlab.com/nuageit/tf-gitlab-groups/local | 1.0.0 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_gitlab_token"></a> [gitlab\_token](#input\_gitlab\_token) | The OAuth2 Token, Project, Group, Personal Access Token or CI Job Token used to connect to GitLab | `string` | `"value"` | no |
| <a name="input_gitlab_url"></a> [gitlab\_url](#input\_gitlab\_url) | This is the target GitLab base API endpoint | `string` | `"https://gitlab.com/api/v4/"` | no |

## Outputs

No outputs.
