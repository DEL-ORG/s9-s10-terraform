aws_region                 = "us-east-1"
name                       = "dev-ec2-instance"
ami                        = "ami-0c55b159cbfafe1f0"  # Replace with your desired AMI
instance_type              = "t3.micro"
subnet_id                  = "subnet-0123456789abcdef0"
security_group_ids         = ["sg-0123456789abcdef0"]
key_name                   = "my-key-pair"
associate_public_ip_address = true
user_data                  = ""
iam_instance_profile       = null
root_volume_size           = 10
root_volume_type           = "gp2"
root_volume_encrypted      = true

tags = {
  Environment = "dev"
  Owner       = "DevOps"
  Project     = "EC2 Provisioning"
}
