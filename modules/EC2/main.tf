# Fetch the default VPC
data "aws_vpc" "default" {
  default = true
}

# Fetch the default security group belonging to the default VPC
data "aws_security_group" "default" {
  name   = "default"
  vpc_id = data.aws_vpc.default.id
}

resource "aws_instance" "this" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  # Attach the default security group
  vpc_security_group_ids = [data.aws_security_group.default.id]

  # Root volume configuration
  root_block_device {
    volume_size           = 8
    volume_type           = "gp3"
    encrypted             = true
    delete_on_termination = true
  }

  tags = {
    Name        = "${var.environment}-${var.instance_name}"
    Environment = var.environment
  }
}