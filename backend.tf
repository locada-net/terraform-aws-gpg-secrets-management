terraform {
    backend "local" {}
    required_version = "~> 1.2.1"
}

provider "aws" {
  region = "us-east-1"
}