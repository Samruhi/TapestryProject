terraform {
    required_providers {
        aws  = {
            source = "hashicorp/aws"
            version = "~> 4.0"
        }
      
    }
    backend "remote" {
        hostname = "app.terraform.io"
        organization = "samterraform"

        workspaces {
            name = "prod"
        }
      
    }
  
}

provider "aws" {
    region = "us-west-2"
}