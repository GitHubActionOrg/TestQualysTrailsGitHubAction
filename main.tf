terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.15.1"
}

resource "aws_instance" "app_serdvers" {
  ami           = "ami-09e67e426f2d5ce0d7"
  instance_type = "t2.micro"

  tags = {
    Owner = "Shrikant ssdDhanajswade",
    Name  = "Test VM QA TEST"
  }
}
