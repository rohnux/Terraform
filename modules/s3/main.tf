resource "aws_s3_bucket" "demo_s3_bucket" {
  count = length(var.s3_bucket_name)
  bucket  = var.s3_bucket_name[count.index]
  acl    = "private"
  versioning {
  enabled = true
  }

  tags = {
  Name               = var.s3_bucket_name[count.index]
  Project            = var.Project
  Owner              = var.Owner
  }
}
