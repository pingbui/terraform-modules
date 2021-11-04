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
| [aws_organizations_organization.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_organization) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_feature_set"></a> [feature\_set](#input\_feature\_set) | Specify 'ALL' (default) or 'CONSOLIDATED\_BILLING'. | `string` | `"ALL"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_organizations_organization_accounts"></a> [organizations\_organization\_accounts](#output\_organizations\_organization\_accounts) | List of organization accounts including the master account |
| <a name="output_organizations_organization_arn"></a> [organizations\_organization\_arn](#output\_organizations\_organization\_arn) | ARN of the organization |
| <a name="output_organizations_organization_id"></a> [organizations\_organization\_id](#output\_organizations\_organization\_id) | Identifier of the organization |
| <a name="output_organizations_organization_master_account_arn"></a> [organizations\_organization\_master\_account\_arn](#output\_organizations\_organization\_master\_account\_arn) | ARN of the master account |
| <a name="output_organizations_organization_master_account_email"></a> [organizations\_organization\_master\_account\_email](#output\_organizations\_organization\_master\_account\_email) | Email address of the master account |
| <a name="output_organizations_organization_master_account_id"></a> [organizations\_organization\_master\_account\_id](#output\_organizations\_organization\_master\_account\_id) | Identifier of the master account |
| <a name="output_organizations_organization_non_master_accounts"></a> [organizations\_organization\_non\_master\_accounts](#output\_organizations\_organization\_non\_master\_accounts) | List of organization accounts excluding the master account |
| <a name="output_organizations_organization_roots"></a> [organizations\_organization\_roots](#output\_organizations\_organization\_roots) | List of organization roots. |
