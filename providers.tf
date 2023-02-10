terraform {
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
    null = {
      source  = "hashicorp/null"
      version = "3.2.1"
    }
  }
}


provider "null" {
  # Configuration options
}