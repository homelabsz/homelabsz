## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.5 |
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | ~> 16.3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_gitlab"></a> [gitlab](#provider\_gitlab) | ~> 16.3 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [gitlab_group.groups](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/group) | resource |
| [gitlab_group.parents](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/data-sources/group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_gitlab_groups"></a> [gitlab\_groups](#input\_gitlab\_groups) | The list of Gitlab groups to create based on parent | <pre>list(object({<br>    path   = string<br>    parent = string<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_gitlab_groups"></a> [gitlab\_groups](#output\_gitlab\_groups) | n/a |
