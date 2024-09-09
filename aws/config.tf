terraform {
  backend "s3" {
    dynamodb_table = "terraform-locks"
    bucket         = "terraform-state-hir"
    key            = "state/aws/terraform.tfstate"
    encrypt        = true
    region         = "us-east-1"
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.64.0"
    }
  }
}

