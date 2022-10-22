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
  region  = "us-east-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-097a2df4ac947655f"
  instance_type = "t2.micro"
  key_name = "pablo-machado"

  tags = {
    Name = "Primeira instância"
  }
}
