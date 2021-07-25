variable "vpc_id" {
  default = ""
}

variable "kms_master_key_arn" {
  default = ""
}

variable "encrypted" {
  default = ""
}

variable "Accesstype" {
  default = ""
}

variable "creation_token" {
  default = ""
}

variable "transition_to_ia" {
  default = ""
}

variable "performance_mode" {
  default = ""
}

variable "throughput_mode" {
  default = ""
}

variable "aws_security_group" {
  default = []
}

variable "subnet_id" {
  default = []
}

variable "Environment" {
  default = ""
}

variable "SubEnvironment" {
  default = ""
}

variable "Vertical" {
  default = ""
}

variable "Component" {
  default = ""
}

variable "Subcomponent" {
  default = ""
}

variable "Project" {
  default = ""
}

variable "Resource" {
  default = ""
}

variable "Managed" {
  default = ""
}
