# Módulo remoto CONFORME — contraparte del caso 1.1.1 y destino de las referencias del caso 1.3.1.
# Solo permite HTTPS desde la red interna.

resource "aws_security_group" "this" {
  name        = "wiz-poc-${var.name}"
  description = "SG de modulo remoto con ingress solo desde red interna"
  vpc_id      = var.vpc_id

  ingress {
    description = "HTTPS desde red interna"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/8"]
  }
}
