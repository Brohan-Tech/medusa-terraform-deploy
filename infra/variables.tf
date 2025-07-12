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
variable "aws_access_key_id" {
  description = "AWS Access Key ID"
  type        = string
  sensitive   = true
}

variable "aws_secret_access_key" {
  description = "AWS Secret Access Key"
  type        = string
  sensitive   = true
}

