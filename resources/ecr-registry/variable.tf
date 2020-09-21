variable "aws_region" {
  default = "eu-central-1"
}

variable "aws_profile" {
  default = "poc"
}

variable "ecr_repo_names" {
  description = "Create Ecr repo with these names"
  type        = list(string)
  default     = ["demo-iamge-1", "demo-image-2" ]
}

variable "Project" {
  default = "POC"
}


variable "Owner" {
  default = "ROHAN"
}
