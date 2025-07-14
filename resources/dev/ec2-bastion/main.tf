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


module "sg" {
  source = "../../../modules/sg"

  allowed_ports = [
    {
      port        = 22
      description = "SSH Access"
      cidr_blocks = [
        "203.0.113.5/32",
        "198.51.100.7/32"
      ]
    }
  ]

  vpc_id                     = "vpc-068852590ea4b093b"
  security_group_name        = "bastion-host-sg-2"
  security_group_description = "Security group for bastion-host servers"
  aws_region                 = "us-east-1"
}

module "ec2" {
  source = "../../../modules/ec2"

  ami_id                 = "ami-0c94855ba95c71c99"
  instance_type          = "t2.micro"
  key_name               = "terraform-aws"
  subnet_id              = "subnet-096d45c28d9fb4c14"
  vpc_security_group_ids = [module.sg.id]

  volume_size = 20
  volume_type = "gp2"

  tags = {
    Name = "bastion-host"
  }

  aws_region = "us-east-1"
}