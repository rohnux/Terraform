resource "aws_ecr_repository" "demo_ecr_repo" {
  count = length(var.ecr_repo_names)
  name  = var.ecr_repo_names[count.index]
  image_tag_mutability = "IMMUTABLE"
  image_scanning_configuration {
    scan_on_push = true
  }
  tags = {
  Name               = var.ecr_repo_names[count.index]
  Project            = var.Project
  Owner              = var.Owner
}
}
