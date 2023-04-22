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
| [aws_lightsail_instance.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_instance) | resource |
| [aws_lightsail_instance_public_ports.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_instance_public_ports) | resource |
| [aws_lightsail_key_pair.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_key_pair) | resource |
| [aws_lightsail_static_ip.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_static_ip) | resource |
| [aws_lightsail_static_ip_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_static_ip_attachment) | resource |
| [aws_availability_zones.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_add_ons"></a> [add\_ons](#input\_add\_ons) | The add on configuration for the instance. | `map(string)` | `{}` | no |
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | The Availability Zone in which to create instances. | `string` | `""` | no |
| <a name="input_blueprint_id"></a> [blueprint\_id](#input\_blueprint\_id) | The ID for a virtual private server image. | `string` | `"ubuntu_20_04"` | no |
| <a name="input_bundle_id"></a> [bundle\_id](#input\_bundle\_id) | The bundle of specification information. | `string` | `"nano_2_1"` | no |
| <a name="input_create"></a> [create](#input\_create) | Whether to create resources. | `bool` | `true` | no |
| <a name="input_create_static_ip"></a> [create\_static\_ip](#input\_create\_static\_ip) | Create and attach a statis IP to the instance | `bool` | `true` | no |
| <a name="input_ip_address_type"></a> [ip\_address\_type](#input\_ip\_address\_type) | The IP address type of the Lightsail Instance. Valid Values: dualstack \| ipv4. | `string` | `"dualstack"` | no |
| <a name="input_key_pair_name"></a> [key\_pair\_name](#input\_key\_pair\_name) | The key name to use for the instance. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the instances. | `string` | n/a | yes |
| <a name="input_number_of_instances"></a> [number\_of\_instances](#input\_number\_of\_instances) | Number of instances. | `number` | `1` | no |
| <a name="input_port_info"></a> [port\_info](#input\_port\_info) | Configuration block with port information. | `any` | <pre>[<br>  {<br>    "port": 443<br>  },<br>  {<br>    "port": 80<br>  }<br>]</pre> | no |
| <a name="input_public_key"></a> [public\_key](#input\_public\_key) | The public key. | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags. | `map(string)` | `{}` | no |
| <a name="input_use_default_key_pair"></a> [use\_default\_key\_pair](#input\_use\_default\_key\_pair) | Whether to use default key. | `bool` | `false` | no |
| <a name="input_user_data"></a> [user\_data](#input\_user\_data) | User data of the instances. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_key_pair"></a> [key\_pair](#output\_key\_pair) | n/a |
| <a name="output_lightsail_instances"></a> [lightsail\_instances](#output\_lightsail\_instances) | The created Lightsail instances. |
<!-- END_TF_DOCS -->
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.50.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.60.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_lightsail_instance.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_instance) | resource |
| [aws_lightsail_instance_public_ports.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_instance_public_ports) | resource |
| [aws_lightsail_key_pair.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_key_pair) | resource |
| [aws_lightsail_static_ip.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_static_ip) | resource |
| [aws_lightsail_static_ip_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_static_ip_attachment) | resource |
| [aws_availability_zones.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_add_ons"></a> [add\_ons](#input\_add\_ons) | The add on configuration for the instance. | `map(string)` | `{}` | no |
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | The Availability Zone in which to create instances. | `string` | `""` | no |
| <a name="input_blueprint_id"></a> [blueprint\_id](#input\_blueprint\_id) | The ID for a virtual private server image. | `string` | `"ubuntu_20_04"` | no |
| <a name="input_bundle_id"></a> [bundle\_id](#input\_bundle\_id) | The bundle of specification information. | `string` | `"nano_2_1"` | no |
| <a name="input_create"></a> [create](#input\_create) | Whether to create resources. | `bool` | `true` | no |
| <a name="input_create_static_ip"></a> [create\_static\_ip](#input\_create\_static\_ip) | Create and attach a statis IP to the instance | `bool` | `true` | no |
| <a name="input_ip_address_type"></a> [ip\_address\_type](#input\_ip\_address\_type) | The IP address type of the Lightsail Instance. Valid Values: dualstack \| ipv4. | `string` | `"dualstack"` | no |
| <a name="input_key_pair_name"></a> [key\_pair\_name](#input\_key\_pair\_name) | The key name to use for the instance. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the instances. | `string` | n/a | yes |
| <a name="input_number_of_instances"></a> [number\_of\_instances](#input\_number\_of\_instances) | Number of instances. | `number` | `1` | no |
| <a name="input_port_info"></a> [port\_info](#input\_port\_info) | Configuration block with port information. | `any` | <pre>[<br>  {<br>    "port": 443<br>  },<br>  {<br>    "port": 80<br>  }<br>]</pre> | no |
| <a name="input_public_key"></a> [public\_key](#input\_public\_key) | The public key. | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags. | `map(string)` | `{}` | no |
| <a name="input_use_default_key_pair"></a> [use\_default\_key\_pair](#input\_use\_default\_key\_pair) | Whether to use default key. | `bool` | `false` | no |
| <a name="input_user_data"></a> [user\_data](#input\_user\_data) | User data of the instances. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_key_pair"></a> [key\_pair](#output\_key\_pair) | n/a |
| <a name="output_lightsail_instances"></a> [lightsail\_instances](#output\_lightsail\_instances) | The created Lightsail instances. |
| <a name="output_static_ips"></a> [static\_ips](#output\_static\_ips) | The list of static ips. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
