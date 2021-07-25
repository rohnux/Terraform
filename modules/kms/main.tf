resource "aws_kms_key" "kms_key" {
description              = var.description
customer_master_key_spec = var.customer_master_key_spec
key_usage                = var.key_usage
is_enabled               = var.is_enabled
policy                   = var.policy
enable_key_rotation      = var.enable_key_rotation

  tags = {
    Name             = "${var.Project}-${var.Environment}-euc1-${var.Subcomponent}-${var.Component}"
    Environment      = var.Environment
    Project          = var.Project
    Vertical         = var.Vertical
    Component        = var.Component
    Subcomponent     = var.Subcomponent
    Resource         = var.Resource
    ManagedBy        = var.ManagedBy
  }
}

resource "aws_kms_alias" "kms_key_alias"  {
  name          = "alias/${var.alias_name}"
  target_key_id = aws_kms_key.kms_key.id

}
