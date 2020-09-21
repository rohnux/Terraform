variable "aws_region" {
  default = "eu-central-1"
}

variable "aws_profile" {
  default = "poc"
}

variable "s3_bucket_name" {
  description = "Create S3 buckets with these names"
  type        = list(string)
  default     = ["demo-bucket-1", "demo-bucket-2"]
}


variable "Project" {
  default = "POC-S3"
}

variable "Owner" {
  default = "POC"
}
