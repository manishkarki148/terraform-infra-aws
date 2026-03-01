
module "mk_s3_bucket_a" {
  providers = {
    aws = aws.account_a
  }
  source = "./modules/my-s3"
  bucket_name = var.bucket_name_a
  account_a_role_arn = var.account_a_role_arn
}

module "mk_s3_bucket_b" {
  providers = {
    aws = aws.account_b
  }
  source = "./modules/my-s3"
  bucket_name = var.bucket_name_b
  account_b_role_arn = var.account_b_role_arn
}


