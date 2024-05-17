output "client_name" {
  value       = local.client_name
  description = "Normalized client name"
}

output "aws_criticality" {
  value       = local.aws_environment
  description = "Normalized aws_criticality"
}

output "aws_environment" {
  value       = local.aws_environment
  description = "Normalized aws_environment"
}
