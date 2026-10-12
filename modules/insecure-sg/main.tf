# Módulo remoto INSEGURO — caso 1.1.1 de la matriz.
# La violación vive DENTRO del módulo (no en el repo que lo consume), así medimos si
# el escaneo ve el código que descarga `terraform init` en .terraform/modules.
# Puerto 3389 (RDP) a propósito: distinto del 22 del caso 3.3, para atribuir el hallazgo sin ambigüedad.

resource "aws_security_group" "this" {
  name        = "wiz-poc-${var.name}"
  description = "SG de modulo remoto con RDP abierto (violacion 1.1.1)"
  vpc_id      = var.vpc_id

  ingress {
    description = "RDP abierto a internet"
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
