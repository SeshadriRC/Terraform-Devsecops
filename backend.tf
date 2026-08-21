backend "s3" {
    bucket = "terraform-state-seshadri"
    key    = "ec2/terraform.tfstate"
    region = "ap-south-1"
  }