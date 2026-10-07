terraform {
  backend "s3" {
    bucket       = "itspuru21-terraform-state-bucket" # Use your exact bucket name
    key          = "practice/terraform.tfstate"       # The file path inside the bucket
    region       = "ap-south-1"                       # Your bucket's region
    use_lockfile = true                               # Enables state locking to prevent concurrent modifications
    encrypt      = true                               # Encrypts the state file at rest
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.67.0"
    }
  }
}