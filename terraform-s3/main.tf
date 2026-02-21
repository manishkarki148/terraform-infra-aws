

module "mk_s3_bucket" {
  provider "aws" {
    alias  = "account_b"
  }
  source = "./modules/my-s3"
  bucket_name = var.bucket_name
}
