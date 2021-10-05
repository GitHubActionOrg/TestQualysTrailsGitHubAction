terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.29"
    }
  }

  required_version = ">= 0.15.1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-09e67e426fs25ce0ssssd7"
  instance_type = "t2.micro"

  tags = {
    Owner = "Shrikant Dhanawade",
    Name  = "Test VM QA TEST12"
  }
}
