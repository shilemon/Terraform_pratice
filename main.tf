provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}
resource "aws_instance" "ostad" {
  count = 3
  ami                     = var.ami
  instance_type           = var.instance_type

  tags ={
    Name = "ostad-1"
  }
}

output "ec2_public_ip" {
  value = {
  for key, instance in aws_instance.ostad:
  key=>instance.public_ip
  }
}