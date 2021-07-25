resource "aws_efs_file_system" "efs_creation" {
  creation_token = var.creation_token

  lifecycle_policy {
    transition_to_ia = var.transition_to_ia
  }
  performance_mode = var.performance_mode
  throughput_mode  = var.throughput_mode
  encrypted                   = var.encrypted
  kms_key_id                  = var.kms_master_key_arn

  tags = {
      Name                        = var.creation_token
      Environment                 = var.Environment
      Project                     = var.Project
      Vertical                    = var.Vertical
      Component                   = var.Component
      Subcomponent                = var.Subcomponent
      Resource                    = var.Resource
      Managed                     = var.Managed
  }
}

resource "aws_efs_mount_target" "efs_mount" {
  count          = length(var.subnet_id)  # count the number of subnets
  file_system_id = aws_efs_file_system.efs_creation.id
  subnet_id      = element(var.subnet_id,count.index) #create mount target in each AZ
  security_groups = var.aws_security_group
}
