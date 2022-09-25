terraform {
    required_version = "~> 1.3.0" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.32.0"
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
	vpc_id = "vpc-0284a09ac12fe41ac"
	subnet_id = "subnet-07b603608da7e6acb"
}
