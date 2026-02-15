terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    bucket = "mk-terraform-backend-s3"   # Replace with your S3 bucket
    key    = "envs/dev/s3-1/terraform.tfstate" # Path to state file in the bucket

    # Enable server-side encryption
    encrypt = true

    # Enable S3 native state locking
    use_lockfile = true

    # Optional: Enable S3 bucket versioning (highly recommended for state recovery)
    versioning_enabled = true

    # Optional: force S3-only locking without DynamoDB
    # WARNING: S3-only locking is not strongly consistent. Only for small teams/testing.
    # Terraform uses object-level locks in S3.
  }
}

