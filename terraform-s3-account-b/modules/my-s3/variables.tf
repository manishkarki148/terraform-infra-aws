variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"  # optional default
}

variable "account_b_role_arn" {
  description = "Role ARN for cross-account assume_role"
  type        = string
}

variable "account_a_role_arn" {
  description = "Role ARN for cross-account assume_role"
  type        = string
}
