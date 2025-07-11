variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "name" {
  description = "Name tag for the EC2 instance"
  type        = string
}

variable "ami" {
  description = "AMI ID"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
}

variable "security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
}

variable "key_name" {
  description = "Key pair name"
  type        = string
}

variable "associate_public_ip_address" {
  description = "Associate a public IP"
  type        = bool
}

variable "user_data" {
  description = "User data script"
  type        = string
  default     = ""
}

variable "iam_instance_profile" {
  description = "IAM instance profile name"
  type        = string
  default     = null
}

variable "root_volume_size" {
  description = "Root volume size"
  type        = number
}

variable "root_volume_type" {
  description = "Root volume type"
  type        = string
}

variable "root_volume_encrypted" {
  description = "Whether to encrypt the root volume"
  type        = bool
}

variable "tags" {
  description = "Custom tags"
  type        = map(string)
}
