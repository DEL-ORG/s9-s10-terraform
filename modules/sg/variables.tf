variable "security_group_name" {
  description = "The name of the security group"
  type        = string
}

variable "aws_region" {
  description = "AWS Region"
  type        = string
}

variable "security_group_description" {
  description = "Description of the security group"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for the security group"
  type        = string
}

variable "allowed_ports" {
  description = "List of allowed ingress ports"
  type = list(object({
    port        = number
    description = string
    cidr_blocks = list(string)
  }))
}
