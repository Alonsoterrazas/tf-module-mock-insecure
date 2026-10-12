# Un módulo reutilizable declara versión MÍNIMA; el pin exacto vive en el módulo raíz y en su lock file.
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.0"
    }
  }
}
