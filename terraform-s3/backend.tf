terraform {
  backend "s3" {
    bucket = "mk-terraform-backend-s3"   # Replace with your S3 bucket
    key    = "envs/dev/s3-1/terraform.tfstate" # Path to state file in the bucket
    encrypt = true
    region = var.aws_region
    use_lockfile = true
  }
}
