output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.this.id
}

output "public_ip" {
  description = "Public IP address of the instance"
  value       = aws_instance.this.public_ip
}

output "private_ip" {
  description = "Private IP address of the instance"
  value       = aws_instance.this.private_ip
}

output "public_dns" {
  description = "Public DNS name"
  value       = aws_instance.this.public_dns
}
