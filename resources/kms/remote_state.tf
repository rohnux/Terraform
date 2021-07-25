terraform {
  backend "s3" {
    encrypt = true
    bucket = "demo-poc-terraform"
    key    = "terraform/kms/kms.tfstate"
    region = "eu-central-1"
    profile = "poc"
  }
}
