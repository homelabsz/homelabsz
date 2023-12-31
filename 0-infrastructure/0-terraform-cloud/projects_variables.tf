
resource "tfe_variable_set" "aws" {
  name         = "AWS Varset"
  description  = "Variable set applied in AWS project."
  organization = var.tfc_organization
}

resource "tfe_project_variable_set" "aws" {
  variable_set_id = tfe_variable_set.aws.id
  project_id      = tfe_project.aws.id
}

resource "tfe_variable" "enable_aws_provider_auth" {
  variable_set_id = tfe_variable_set.aws.id
  key             = "TFC_AWS_PROVIDER_AUTH"
  value           = "true"
  category        = "env"
  description     = "Enable the Workload Identity integration for AWS"
  lifecycle {
    ignore_changes = [value]
  }
}

resource "tfe_variable" "tfc_aws_role_arn" {
  variable_set_id = tfe_variable_set.aws.id
  key             = "TFC_AWS_RUN_ROLE_ARN"
  value           = aws_iam_role.tfc_role.arn
  category        = "env"
  description     = "The AWS role arn runs will use to authenticate"
  lifecycle {
    ignore_changes = [value]
  }
}
