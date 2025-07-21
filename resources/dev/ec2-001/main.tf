terraform {
  required_version = ">= 1.10.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "ec2" {
  source = "../../../modules/ec2"

  ami_id                 = "ami-0c94855ba95c71c99"
  instance_type          = "t2.micro"
  key_name               = "terraform-aws"
  subnet_id              = "subnet-096d45c28d9fb4c14"
  vpc_security_group_ids = ["sg-0a885340f0e3606d1"]

  volume_size = 20
  volume_type = "gp2"

  tags = {
    Name = "bastion-host"
  }

  aws_region = "us-east-1"
}
