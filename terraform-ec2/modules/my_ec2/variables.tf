variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID to use for EC2"
  type        = string
  default     = "ami-0c55b159cbfafe1f0"  # Example: Amazon Linux 2
}

variable "tags" {
  description = "Tags to apply to EC2"
  type        = map(string)
  default     = {
    Name = "MyEC2"
  }
}
