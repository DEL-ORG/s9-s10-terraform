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

module "rm" {
  source = "../../../modules/sg"

  allowed_ports = [
    {
      port        = 443
      description = "SSH Access"
      cidr_blocks = [
        "203.0.113.5/32",
        "198.51.100.7/32"
      ]
    },
    {
      port        = 3306
      description = "RDS Access"
      cidr_blocks = [
        "203.0.113.5/32",
        "198.51.100.7/32"
      ]
    }
  ]

  vpc_id                     = "vpc-068852590ea4b093b"
  security_group_name        = "rds-sg"
  security_group_description = "Security group for rds servers"
  aws_region                 = "us-east-1"
}