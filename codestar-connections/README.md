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
| [aws_codestarconnections_connection.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/codestarconnections_connection) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_codestarconnections_name"></a> [codestarconnections\_name](#input\_codestarconnections\_name) | The unique name of the connection to be created | `string` | `"Managed-CachingDisabled"` | no |
| <a name="input_codestarconnections_provider"></a> [codestarconnections\_provider](#input\_codestarconnections\_provider) | The name of the external provider where your third-party code repository is configured. Valid values are Bitbucket, GitHub or GitHubEnterpriseServer | `string` | `"Github"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_connection_arn"></a> [connection\_arn](#output\_connection\_arn) | The identifier for the origin request policy. |
| <a name="output_connection_id"></a> [connection\_id](#output\_connection\_id) | The identifier for the cache policy. |
| <a name="output_connection_status"></a> [connection\_status](#output\_connection\_status) | The identifier for the origin response headers policy. |
