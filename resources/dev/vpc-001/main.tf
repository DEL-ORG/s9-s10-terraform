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

terraform {
  backend "s3" {
    bucket         = "development-del-s9-tf-state"
    key            = "vpc/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "development-del-s9-tf-state-lock"
    encrypt        = true
  }
}

module "vpc" {
  source = "../../../modules/vpc"
  aws_region          = "us-east-1"
  vpc_cidr            = "10.0.0.0/16"
  public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
  azs                 = ["us-east-1a", "us-east-1b"]
}