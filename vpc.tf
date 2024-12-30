terraform {
  backend "s3" {
    bucket = "aliitok-lab-bucket-1997"
    key    = "terraform_backend/aws-eks"
    region = "us-east-1"
  }
}

module "eks_vpc" {
  source  = "cookpad/eks/aws//modules/vpc"
  version = "1.31.0-rc2"
  # insert the 3 required variables here
  availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]
  cidr_block         = "10.0.0.0/16"
  name = "eks-vpc"
}