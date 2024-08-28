terraform {
  backend "s3" {
    dynamodb_table = "terraform-locks"
    bucket         = "terraform-state-hir"
    key            = "state/terraform.tfstate"
    encrypt        = true
    region         = "us-east-1"
  }

  required_providers {
    supabase = {
      source  = "supabase/supabase"
      version = "~> 1.0"
    }
  }
}

provider "supabase" {
  access_token = var.access_token
}
