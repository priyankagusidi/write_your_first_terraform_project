terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "priyanka" {
  ami           = "ami-01bc990364452ab3e"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform_Demo"
  }
}

