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
| [aws_wafv2_ip_set.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/wafv2_ip_set) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_addresses"></a> [addresses](#input\_addresses) | Contains an array of strings that specify one or more IP addresses or blocks of IP addresses in Classless Inter-Domain Routing (CIDR) notation | `list(string)` | n/a | yes |
| <a name="input_custom_name"></a> [custom\_name](#input\_custom\_name) | A custome name of the IP set | `string` | `""` | no |
| <a name="input_description"></a> [description](#input\_description) | A friendly description of the IP set | `string` | `null` | no |
| <a name="input_ip_address_version"></a> [ip\_address\_version](#input\_ip\_address\_version) | Specify IPV4 or IPV6. Valid values are IPV4 or IPV6 | `string` | `"IPV4"` | no |
| <a name="input_name"></a> [name](#input\_name) | A friendly name of the IP set | `string` | `"ipset"` | no |
| <a name="input_scope"></a> [scope](#input\_scope) | Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are CLOUDFRONT or REGIONAL | `string` | `"REGIONAL"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | An array of key:value pairs to associate with the resource | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | The Amazon Resource Name (ARN) that identifies the cluster |
| <a name="output_id"></a> [id](#output\_id) | A unique identifier for the set |
