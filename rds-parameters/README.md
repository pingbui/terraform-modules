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
| [aws_db_parameter_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_parameter_group) | resource |
| [aws_rds_cluster_parameter_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/rds_cluster_parameter_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_parameters"></a> [cluster\_parameters](#input\_cluster\_parameters) | The list of map of cluster parameters to modify. | `list(map(string))` | `[]` | no |
| <a name="input_create_cluster_parameter"></a> [create\_cluster\_parameter](#input\_create\_cluster\_parameter) | Whether to create the cluster parameters. | `bool` | `true` | no |
| <a name="input_create_db_parameter"></a> [create\_db\_parameter](#input\_create\_db\_parameter) | Whether to create the db parameters. | `bool` | `true` | no |
| <a name="input_family"></a> [family](#input\_family) | The family of the DB cluster parameter group. | `string` | n/a | yes |
| <a name="input_instance_parameters"></a> [instance\_parameters](#input\_instance\_parameters) | The list of map of db parameters to modify. | `list(map(string))` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | The parameter name. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to this endpoint. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_parameter_name"></a> [cluster\_parameter\_name](#output\_cluster\_parameter\_name) | The name of the cluster parameter |
| <a name="output_db_parameter_name"></a> [db\_parameter\_name](#output\_db\_parameter\_name) | The name of the db parameter |
