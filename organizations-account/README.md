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
| [aws_organizations_account.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_email"></a> [email](#input\_email) | The email address of the owner to assign to the new member account. This email address must not already be associated with another AWS account. | `string` | n/a | yes |
| <a name="input_iam_user_access_to_billing"></a> [iam\_user\_access\_to\_billing](#input\_iam\_user\_access\_to\_billing) | Whether allow IAM users to access account billing information. 'ALLOW' or 'DENY' | `string` | `"ALLOW"` | no |
| <a name="input_name"></a> [name](#input\_name) | A friendly name for the member account. | `string` | n/a | yes |
| <a name="input_parent_id"></a> [parent\_id](#input\_parent\_id) | Parent Organizational Unit ID or Root ID for the account. | `string` | `null` | no |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | The name of an IAM role that Organizations automatically preconfigures in the new member account. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Key-value map of resource tags. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_organizations_account_arn"></a> [organizations\_account\_arn](#output\_organizations\_account\_arn) | The ARN for this account |
| <a name="output_organizations_account_id"></a> [organizations\_account\_id](#output\_organizations\_account\_id) | The AWS account id |
