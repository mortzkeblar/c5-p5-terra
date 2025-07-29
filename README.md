<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.10.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 6.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_instance"></a> [instance](#module\_instance) | ./modules/instance | n/a |
| <a name="module_network"></a> [network](#module\_network) | ./modules/network | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami"></a> [ami](#input\_ami) | n/a | `string` | `"ami-08a6efd148b1f7504"` | no |
| <a name="input_availability_zones"></a> [availability\_zones](#input\_availability\_zones) | n/a | `list(string)` | <pre>[<br/>  "us-east-1a",<br/>  "us-east-1b"<br/>]</pre> | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Ambiente de despliegue | `string` | n/a | yes |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | n/a | `string` | `"t2.micro"` | no |
| <a name="input_my_public_ip"></a> [my\_public\_ip](#input\_my\_public\_ip) | n/a | `string` | n/a | yes |
| <a name="input_organization"></a> [organization](#input\_organization) | n/a | `string` | `"Mikroways"` | no |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | Abreviatura de la organización o prefijo general para nombres | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | Nombre del proyecto | `string` | n/a | yes |
| <a name="input_public_key"></a> [public\_key](#input\_public\_key) | n/a | `string` | `"ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHtsDTrBlj5M+jg+vqFoK6oHnmtLrbXWViBZOhWo4kex mortzkeb@gmail.com"` | no |
| <a name="input_public_subnet_cidrs"></a> [public\_subnet\_cidrs](#input\_public\_subnet\_cidrs) | n/a | `list(string)` | <pre>[<br/>  "10.0.101.0/24",<br/>  "10.0.201.0/24"<br/>]</pre> | no |
| <a name="input_region"></a> [region](#input\_region) | Región de AWS | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ec2_instance_public_ip"></a> [ec2\_instance\_public\_ip](#output\_ec2\_instance\_public\_ip) | n/a |
| <a name="output_public_subnet_ids"></a> [public\_subnet\_ids](#output\_public\_subnet\_ids) | n/a |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | n/a |
<!-- END_TF_DOCS -->
