variable "aws_environment" {
  type        = string
  default     = "production"
  description = "The name of the environment - e.g. 'production', 'stage', 'develop'"
}

variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "The region of the client"
}

variable "aws_replication_region" {
  type        = string
  default     = "us-east-2"
  description = "The replication region of the client"
}

variable "client_name" {
  type        = string
  default     = "nuageit"
  description = "The name of the client"
}
