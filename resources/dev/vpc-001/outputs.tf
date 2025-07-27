output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnets" {
  value = module.vpc.public_subnets
}

output "public_subnet_1" {
  value = module.vpc.public_subnet_1
}

output "public_subnet_2" {
  value = module.vpc.public_subnet_2
}
