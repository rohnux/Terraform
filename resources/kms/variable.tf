 variable "aws_region" {
    default = "eu-central-1"
  }

 variable "aws_profile" {
    default = "poc"
  }

  variable "description" {
     default = "Kms Key"
   }

  variable "alias_name" {
     default = "demo-dev-kms-key"
    }

  variable "customer_master_key_spec" {
    default = "SYMMETRIC_DEFAULT"
  }

  variable "policy" {
     default = ""
   }

  variable "key_usage" {
     default = "ENCRYPT_DECRYPT"
    }

 variable "is_enabled" {
    default = "true"
   }

 variable "enable_key_rotation" {
    default = "false"
   }

  variable "Environment" {
    default = "dev"
  }

  variable "Vertical" {
  default = "operation"
}

variable "Project" {
  default = "demo"
}

variable "Component" {
  default = "kms"
}

variable "Subcomponent" {
  default = "shared"
}

variable "Resource" {
  default = "kms"
}

variable "ManagedBy" {
  default = "terraform"
}
