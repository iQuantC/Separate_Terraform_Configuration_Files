terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

resource "aws_instance" "terra_ec2" {
  ami                    = var.AMI
  instance_type          = var.TYPE
  key_name               = var.KEY
  vpc_security_group_ids = ["sg-040c1fca5fe860748"]
  tags = {
    "Name" = "Terra EC2"
    "Environment" = "Dev"
  }
}

resource "aws_instance" "My_ec2" {
  ami = var.AMI2
  instance_type = var.TYPE
  key_name = var.KEY
  tags = {
    "Name" = "My_EC2"
  }
}

