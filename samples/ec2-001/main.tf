
# 1. Security Group to allow SSH
resource "aws_security_group" "ec2_sg" {
  name        = "allow-ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = "vpc-068852590ea4b093b" # Your VPC ID

  ingress {
    description = "SSH Access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Open to all; restrict for production use
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# 2. EC2 Instance
resource "aws_instance" "my_ec2" {
  depends_on             = [aws_security_group.ec2_sg]
  ami                    = "ami-0c94855ba95c71c99" # Amazon Linux 2 AMI (verify in your region)
  instance_type          = "t2.micro"
  key_name               = "terraform-aws"            # Using your provided key pair name
  subnet_id              = "subnet-096d45c28d9fb4c14" # Your Subnet ID
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  root_block_device {
    volume_size = 10
    volume_type = "gp2"
  }

  tags = {
    Name = "TIAMyEC2Instance"
  }
}
