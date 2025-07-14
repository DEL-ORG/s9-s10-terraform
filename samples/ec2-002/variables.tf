variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "key_name" {
  description = "Key pair name to SSH into EC2"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for the EC2 instance"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID to associate with the security group"
  type        = string
}

variable "security_group_name" {
  description = "Name for the security group"
  type        = string
}

variable "security_group_description" {
  description = "Description for the security group"
  type        = string
}

variable "ssh_cidr_blocks" {
  description = "CIDR blocks allowed to access via SSH"
  type        = list(string)
}

variable "volume_size" {
  description = "Size of root volume in GB"
  type        = number
}

variable "volume_type" {
  description = "Type of root volume"
  type        = string
}

variable "tags" {
  description = "Tags to apply to the EC2 instance"
  type        = map(string)
}
