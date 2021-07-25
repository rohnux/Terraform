terraform {
  backend "s3" {
    encrypt = true
    bucket = "demo-poc-terraform"
    key    = "terraform/efs/efs.tfstate"
    region = "eu-central-1"
    profile = "poc"
  }
}
