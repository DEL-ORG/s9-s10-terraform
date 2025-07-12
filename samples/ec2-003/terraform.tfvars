ami_id       = "ami-0c94855ba95c71c99"
instance_type = "t2.micro"
key_name     = "terraform-aws"
subnet_id    = "subnet-096d45c28d9fb4c14"
vpc_id       = "vpc-068852590ea4b093b"

security_group_name        = "allow-ssh"
security_group_description = "Allow SSH inbound traffic"
ssh_cidr_blocks            = ["0.0.0.0/0"]

volume_size = 20
volume_type = "gp2"

tags = {
  Name = "TIAMyEC2Instance"
}
