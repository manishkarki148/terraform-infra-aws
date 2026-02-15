output "s3_bucket_name" {
  description = "The name (ID) of the S3 bucket"
  value       = var.bucket_name
}

output "s3_bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = module.vendor_s3.s3_bucket_arn
}

