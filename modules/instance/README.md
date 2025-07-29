<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.ec2_instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_key_pair.public_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami"></a> [ami](#input\_ami) | AMI de la instancia EC2 | `string` | `"ami-08a6efd148b1f7504"` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Tipo de instancia EC2 | `string` | `"t2.micro"` | no |
| <a name="input_naming_prefix"></a> [naming\_prefix](#input\_naming\_prefix) | Prefijo base para el nombramiento de recursos | `string` | n/a | yes |
| <a name="input_public_key"></a> [public\_key](#input\_public\_key) | Clave pública SSH, solo se puede introducir un string de momento. Copiar el contenido de ~/.ssh/<key-name>.pub | `string` | n/a | yes |
| <a name="input_security_groups_id"></a> [security\_groups\_id](#input\_security\_groups\_id) | ID de security groups | `list(string)` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | ID de la subred pública | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_public_ip"></a> [instance\_public\_ip](#output\_instance\_public\_ip) | IP pública de la instancia EC2 |
<!-- END_TF_DOCS -->