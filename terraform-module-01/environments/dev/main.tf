module "ec2_instance" {
  source = "../../modules/ec2_instance"

  name                      = var.name
  ami                       = var.ami
  instance_type             = var.instance_type
  subnet_id                 = var.subnet_id
  security_group_ids        = var.security_group_ids
  key_name                  = var.key_name
  associate_public_ip_address = var.associate_public_ip_address
  user_data                 = var.user_data
  iam_instance_profile      = var.iam_instance_profile
  root_volume_size          = var.root_volume_size
  root_volume_type          = var.root_volume_type
  root_volume_encrypted     = var.root_volume_encrypted
  tags                      = var.tags
}
