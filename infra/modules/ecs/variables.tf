variable "project_name" {}
variable "vpc_id" {}
variable "subnet_ids" {
  type = list(string)
}
variable "db_endpoint" {}
variable "db_password" {
  sensitive = true
}
variable "ecr_repo_url" {}
variable "execution_role_arn" {}
variable "task_role_arn" {}
variable "aws_region" {
  default = "us-east-1"
}

