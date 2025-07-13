terraform {
  backend "s3" {
    bucket         = "medusa-terraform-state-578254188580"
    key            = "medusa/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

