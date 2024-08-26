terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-01ec84b284795cbc7" # Ubuntu Server 24.04 LTS // eu-west-2
  instance_type = "t2.micro"
}
