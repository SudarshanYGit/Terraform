terraform {
  backend "s3" {
    bucket         = "tf-state-sudarshan-1072"
    key            = "env/dev/terraform.tfstate"  # folder/path inside bucket
    region         = "ap-south-1"
    dynamodb_table = "tf-state-locks-sudarshan-1072"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}
