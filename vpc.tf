provider "aws" {
  region  = "us-east-1"
}

module "vpc" {
  source  = "cookpad/eks/aws//modules/vpc"

  name               = "us-east-1"
  cidr_block         = "10.0.0.0/16"
  availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]
}