module "ec2_instance" {
  source = "./modules/EC2"

  ami_id        = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  environment   = var.environment
  instance_name = "My-EC2"
}
