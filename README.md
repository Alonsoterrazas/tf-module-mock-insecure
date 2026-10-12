# tf-module-mock-insecure

Módulo remoto del PoC Wiz IaC. Lo consumen `iac-mock-noncompliant` e `iac-mock-compliant` por Git, fijado a un commit.

| Ruta | Contenido | Caso de la matriz |
| --- | --- | --- |
| `modules/insecure-sg` | SG con RDP (3389) abierto a `0.0.0.0/0` | 1.1.1 no conforme |
| `modules/internal-sg` | SG con HTTPS solo desde `10.0.0.0/8` | 1.1.1 conforme y referencias de 1.3.1 |

## Visibilidad

Este repo debe ser **público**. El workflow de los repos de casos clona módulos con `terraform init` sin credenciales extra; un repo privado haría fallar el init. No contiene nada de la organización.

## Después del primer push

Copia el SHA del commit; los repos de casos lo necesitan:

```bash
git rev-parse HEAD
```
# tf-module-mock-insecure
