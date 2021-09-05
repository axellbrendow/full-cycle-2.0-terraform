terraform {
  required_version = ">= 0.12"
  required_providers {
    aws = ">= 3.55.0"
    local = ">= 2.1.0"
  }
}

provider "aws" {
  region = "us-east-1"
}
