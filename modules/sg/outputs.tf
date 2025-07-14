output "id" {
  description = "The ID of the created security group"
  value       = aws_security_group.ec2_sg.id
}
