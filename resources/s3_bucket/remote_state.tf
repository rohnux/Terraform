terraform {
  backend "s3" {
    encrypt = true
    bucket = "demo-poc-terraform"
    key    = "terraform/s3/s3.tfstate"
    region = "eu-central-1"
    profile = "poc"
  }
}
