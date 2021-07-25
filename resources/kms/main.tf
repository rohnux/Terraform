provider "aws" {
  region     = var.aws_region
  profile    = var.aws_profile
}

module "kms" {

source                   = "../../modules/kms"
description              = var.description
customer_master_key_spec = var.customer_master_key_spec
policy                   = <<EOF
      {
          "Id": "key-consolepolicy-3",
          "Version": "2012-10-17",
          "Statement": [
              {
                  "Sid": "Enable IAM User Permissions",
                  "Effect": "Allow",
                  "Principal": {
                      "AWS": "arn:aws:iam::023178041733:root"
                  },
                  "Action": "kms:*",
                  "Resource": "*"
              }
          ]
}
EOF

key_usage                = var.key_usage
is_enabled               = var.is_enabled
enable_key_rotation      = var.enable_key_rotation
alias_name               = var.alias_name
Environment              = var.Environment
Project                  = var.Project
Vertical                 = var.Vertical
Component                = var.Component
Subcomponent             = var.Subcomponent
Resource                 = var.Resource
ManagedBy                = var.ManagedBy

}
