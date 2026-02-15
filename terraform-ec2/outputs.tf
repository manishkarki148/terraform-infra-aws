output "ec2_id" {
  value = module.my_ec2.instance_id
}

output "ec2_ip" {
  value = module.my_ec2.public_ip
}
