module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 4.0"

  name           = var.tags["Name"]
  ami            = var.ami_id
  instance_type  = var.instance_type
  tags           = var.tags
}
