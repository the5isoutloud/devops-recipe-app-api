terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.23.0"
    }
  }

  backend "s3" {
    bucket         = "kristofer-devops-app-tf-state"
    key            = "tf-state-setup"
    region         = "us-west-2"
    encrypt        = true
    dynamodb_table = "kristofer-devops-tf-lock"
  }
}

provider "aws" {
  region = "us-west-2"
  default_tags {
    tags = {
      Environment = terraform.workspace
      Project     = var.project
      Contact     = var.contact
      ManageBy    = "Terraform/setup"
    }
  }
}
