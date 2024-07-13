provider "github" {
    token="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"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}