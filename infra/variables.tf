variable "project_name" {
  description = "The name of the project. Used for naming AWS resources."
  type        = string
}

variable "db_password" {
  description = "The password for the PostgreSQL RDS instance."
  type        = string
  sensitive   = true
}

variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "us-east-1"
}
