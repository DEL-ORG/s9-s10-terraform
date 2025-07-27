terraform {
  required_version = ">= 1.10.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "development-del-s9-tf-state"
    key            = "ec2/bashtion-host/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "development-del-s9-tf-state-lock"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region
}

# terraform {
#   backend "s3" {
#     bucket         = "development-del-s9-tf-state"
#     key            = "ec2/bashtion-host/terraform.tfstate"
#     region         = "us-east-1"
#     dynamodb_table = "development-del-s9-tf-state-lock"
#     encrypt        = true
#   }
# }


data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "development-del-s9-tf-state"
    key    = "vpc/terraform.tfstate"
    region = "us-east-1"
  }
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

  vpc_id                     = data.terraform_remote_state.vpc.outputs.vpc_id
  security_group_name        = "bastion-host-sg-2"
  security_group_description = "Security group for bastion-host servers"
  aws_region                 = "us-east-1"
}

module "ec2" {
  source = "../../../modules/ec2"

  ami_id                 = "ami-0c94855ba95c71c99"
  instance_type          = "t2.micro"
  key_name               = "terraform-aws"
  subnet_id              = data.terraform_remote_state.vpc.outputs.public_subnet_1
  # subnet_id              = data.terraform_remote_state.vpc.outputs.public_subnet[1]
  vpc_security_group_ids = [module.sg.id]

  volume_size = 20
  volume_type = "gp2"

  tags = {
    Name = "bastion-host"
  }

  aws_region = "us-east-1"
}