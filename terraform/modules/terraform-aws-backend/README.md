## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.38 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 5.38 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_kms_bucket"></a> [kms\_bucket](#module\_kms\_bucket) | terraform-aws-modules/kms/aws | ~> 2.2 |
| <a name="module_kms_dynamodb"></a> [kms\_dynamodb](#module\_kms\_dynamodb) | terraform-aws-modules/kms/aws | ~> 2.2 |
| <a name="module_kms_dynamodb_replication"></a> [kms\_dynamodb\_replication](#module\_kms\_dynamodb\_replication) | terraform-aws-modules/kms/aws | ~> 2.2 |
| <a name="module_kms_replication_bucket"></a> [kms\_replication\_bucket](#module\_kms\_replication\_bucket) | terraform-aws-modules/kms/aws | ~> 2.2 |
| <a name="module_s3_bucket"></a> [s3\_bucket](#module\_s3\_bucket) | terraform-aws-modules/s3-bucket/aws | ~> 4.1 |
| <a name="module_s3_bucket_replication"></a> [s3\_bucket\_replication](#module\_s3\_bucket\_replication) | terraform-aws-modules/s3-bucket/aws | ~> 4.1 |

## Resources

| Name | Type |
|------|------|
| [aws_dynamodb_table.terraform](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table) | resource |
| [aws_iam_policy.replication_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.replication_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.replication_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.bucket_encryption](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.bucket_tf_remote_state](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.replication_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.replication_bucket_assume_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.replication_bucket_tf_remote_state](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_roles.sso_admin](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_roles) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_environment"></a> [aws\_environment](#input\_aws\_environment) | The name of the environment - e.g. 'production', 'stage', 'develop' | `string` | `"production"` | no |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | The region of the client | `string` | `"us-east-1"` | no |
| <a name="input_aws_replication_region"></a> [aws\_replication\_region](#input\_aws\_replication\_region) | The replication region of the client | `string` | `"us-east-2"` | no |
| <a name="input_client_name"></a> [client\_name](#input\_client\_name) | The name of the client | `string` | `"nuageit"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_bucket_arn"></a> [aws\_bucket\_arn](#output\_aws\_bucket\_arn) | The S3 Bucket ARN used to store your Terraform States |
| <a name="output_aws_bucket_id"></a> [aws\_bucket\_id](#output\_aws\_bucket\_id) | The S3 Bucket ID used to store your Terraform States |
| <a name="output_aws_dynamodb_arn"></a> [aws\_dynamodb\_arn](#output\_aws\_dynamodb\_arn) | The DynamoDB ARN used to lock your Terraform States |
| <a name="output_aws_dynamodb_id"></a> [aws\_dynamodb\_id](#output\_aws\_dynamodb\_id) | The DynamoDB ID used to lock your Terraform States |
