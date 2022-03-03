terraform {
  required_version = "0.15.4"
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project   = "Lambda Layers with Terraform"
      CreatedAt = formatdate("YYYY-MM-DD", timestamp())
      ManagedBy = "Terraform"
      Owner     = "Arthur Vinicius"
    }
  }
}
