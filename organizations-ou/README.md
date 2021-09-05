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
| [aws_organizations_organizational_unit.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_organizational_unit) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | A friendly name for the OU. | `string` | n/a | yes |
| <a name="input_parent_id"></a> [parent\_id](#input\_parent\_id) | ID of the parent organizational unit, which may be the root. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Key-value map of resource tags. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_organizations_unit_accounts"></a> [organizations\_unit\_accounts](#output\_organizations\_unit\_accounts) | The accounts of this OU |
| <a name="output_organizations_unit_arn"></a> [organizations\_unit\_arn](#output\_organizations\_unit\_arn) | The ARN for this OU |
| <a name="output_organizations_unit_id"></a> [organizations\_unit\_id](#output\_organizations\_unit\_id) | The AWS OU id |
