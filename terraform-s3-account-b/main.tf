module "mk_s3_bucket" {
  source = "./modules/my-s3"
  bucket_name = var.bucket_name
  account_b_role_arn = var.account_b_role_arn
}
