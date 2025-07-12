variable "name" {
  description = "Name tag for the EC2 instance"
  type        = string
}

variable "ami" {
  description = "AMI ID to use for the instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for the instance"
  type        = string
}

variable "security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
}

variable "key_name" {
  description = "Key pair name for SSH access"
  type        = string
}

variable "associate_public_ip_address" {
  description = "Whether to associate a public IP address"
  type        = bool
  default     = true
}

variable "user_data" {
  description = "User data script to run at instance launch"
  type        = string
  default     = ""
}

variable "iam_instance_profile" {
  description = "IAM instance profile name"
  type        = string
  default     = null
}

variable "root_volume_size" {
  description = "Root EBS volume size in GB"
  type        = number
  default     = 10
}

variable "root_volume_type" {
  description = "EBS volume type (e.g., gp2, gp3, io1)"
  type        = string
  default     = "gp2"
}

variable "root_volume_encrypted" {
  description = "Whether the root volume is encrypted"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Additional tags to apply to the instance"
  type        = map(string)
  default     = {}
}
