/*
terraform {

  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.28.0, < 7.0.0"
      configuration_aliases = [aws.account_b]
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
*/

module "vendor_s3" {
/*
  providers = {
    aws = aws.account_b
  }
*/
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "5.10.0"

  bucket = var.bucket_name
  acl = null
}
