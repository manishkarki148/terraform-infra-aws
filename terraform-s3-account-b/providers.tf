terraform {

  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.28.0, < 7.0.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

provider "aws" {
  alias  = "account_b"
  region = var.aws_region

  assume_role {
    role_arn = "arn:aws:iam::376408658479:role/MK-Github-Pipeline-Access"
  }
}
