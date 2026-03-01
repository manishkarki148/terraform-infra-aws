terraform {
  backend "s3" {
    bucket = "mk-terraform-backend-s3"   # Replace with your S3 bucket
    key    = "envs/dev/s3-2/terraform.tfstate" # Path to state file in the bucket
    encrypt = true
    region = "us-east-1"
    #profile = "default"
    use_lockfile = true
  }
}
