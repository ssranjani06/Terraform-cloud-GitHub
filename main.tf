terraform {
    required_version = "~> 1.3.0" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "Raminfra" {
	ami = "ami-026b57f3c383c2eec" 
	instance_type = "t2.micro"
}
