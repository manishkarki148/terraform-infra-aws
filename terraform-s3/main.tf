

module "mk_s3_bucket" {
  provider "aws" {
    alias  = "account_b"
    region = var.aws_region
  
    assume_role {
      role_arn = var.account_b_role_arn
    }
  }
  source = "./modules/my-s3"
  bucket_name = var.bucket_name
}
