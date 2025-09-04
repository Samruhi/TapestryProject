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
            prefix  = "TapestryProject-prod"
        }
    }
  
}

provider "aws" {
    region = "us-west-2"
    access_key = "AKIA5K7ZA3MXFN2DB275"
    secret_key = "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"
}