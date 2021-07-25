provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

module "efs" {
  source                      = "../../modules/efs"
  vpc_id                      = var.vpc_id
  creation_token              = "${var.Project}-${var.Environment}-ec1-${var.Component}"
  transition_to_ia            = var.transition_to_ia
  performance_mode            = var.performance_mode
  throughput_mode             = var.throughput_mode
  aws_security_group          = [data.aws_security_group.hgw_perf_efs.id] #set of string required for aws_security_group
  subnet_id                   = tolist(data.aws_subnet_ids.private.ids)  #list of subnet ids
  Accesstype                  = var.Accesstype
  Environment                 = var.Environment
  Project                     = var.Project
  Vertical                    = var.Vertical
  Component                   = var.Component
  Subcomponent                = var.Subcomponent
  Resource                    = var.Resource
  Managed                     = var.Managed
  encrypted                   = var.encrypted
  kms_master_key_arn          = var.kms_master_key_arn
}
