terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    bucket = "my-terraform-state-bucket"   # Replace with your S3 bucket
    key    = "envs/prod/terraform.tfstate" # Path to state file in the bucket
    region = var.aws_region

    # Enable server-side encryption
    encrypt = true

    # Optional: force S3-only locking without DynamoDB
    # WARNING: S3-only locking is not strongly consistent. Only for small teams/testing.
    # Terraform uses object-level locks in S3.
  }
}

