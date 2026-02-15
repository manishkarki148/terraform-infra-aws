provider "aws" {
  region = "us-east-1"
  profile = "default"
}

module "my_ec2" {
  source = "./modules/my_ec2"

  instance_type = "t3.micro"   # Overriding default
  tags = {
    Name = "CustomEC2"
    Env  = "Dev"
  }
}
