variable "aws_region" {
  default = "eu-central-1"
}

variable "aws_profile" {
  default = "poc"
}
variable "vpc_id" {
  default = "vpc-03a19f5e40wd21c90"
}
variable "transition_to_ia" {
  default = "AFTER_7_DAYS"
}

variable "kms_master_key_arn" {
  default = "arn:aws:kms:eu-central-1:023178041733:key/0c3234bca-w3ca-4f33-a976-145b7fes2353b2"
}

variable "encrypted" {
  default     = "true"
}

variable "Accesstype" {
  default = "private"
}
variable "performance_mode" {
  default = "maxIO"
}

variable "throughput_mode" {
  default = "bursting"
}

variable "Environment" {
  default = "dev"
}

variable "Vertical" {
  default = "operation"
}

variable "Component" {
  default = "efs"
}

variable "Subcomponent" {
  default = "shared"
}

variable "Project" {
  default = "demo"
}

variable "Resource" {
  default = "efs"
}

variable "Managed" {
  default = "terraform"
}
