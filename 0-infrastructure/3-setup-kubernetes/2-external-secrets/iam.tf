locals {
  app          = "External Secrets Operator"
  service_name = format("kubernetes-%s-eso", var.cluster_name)
}

resource "scaleway_iam_application" "this" {
  name        = local.service_name
  description = format("Application for %s on %s", local.app, var.cluster_name)
}

resource "scaleway_iam_api_key" "this" {
  application_id = scaleway_iam_application.this.id
  description    = local.service_name
}

resource "scaleway_iam_group" "this" {
  name        = local.service_name
  description = format("Members for %s on %s", local.app, var.cluster_name)
  application_ids = [
    scaleway_iam_application.this.id
  ]
}

resource "scaleway_iam_policy" "this" {
  name        = local.service_name
  description = "grants read-only access to all secrets"
  group_id    = scaleway_iam_group.this.id
  rule {
    project_ids = [
      var.project_id,
    ]
    permission_set_names = [
      "SecretManagerFullAccess",
    ]
  }
}
