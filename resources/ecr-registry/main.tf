provider "aws" {
    region = var.aws_region
    profile = var.aws_profile
}

module "ecr" {
 source = "../../modules/ecr/"
 ecr_repo_names = var.ecr_repo_names
 Project = var.Project
 Owner   = var.Owner
}
