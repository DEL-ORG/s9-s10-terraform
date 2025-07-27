# output "instance_id" {
#   description = "The ID of the EC2 instance"
#   value       = aws_instance.this.id
# }

# output "public_ip" {
#   description = "Public IP of the EC2 instance"
#   value       = aws_instance.this.public_ip
# }

output "instance_id" {
  description = "The ID of the EC2 instance"  
  value       = module.ec2.instance_id
}

output "public_ip" {
  description = "Public IP of the EC2 instance"
  value       = module.ec2.public_ip
}