<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.60.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.60.0 |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_lightsail_database.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_database) | resource |
| [random_password.master_password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | n/a | `string` | n/a | yes |
| <a name="input_blueprint_id"></a> [blueprint\_id](#input\_blueprint\_id) | n/a | `string` | `"mysql_8_0"` | no |
| <a name="input_bundle_id"></a> [bundle\_id](#input\_bundle\_id) | n/a | `string` | `"nano_1_0"` | no |
| <a name="input_create"></a> [create](#input\_create) | Whether to create resources. | `bool` | `true` | no |
| <a name="input_engine_version"></a> [engine\_version](#input\_engine\_version) | n/a | `string` | `"8.0.23"` | no |
| <a name="input_master_database_name"></a> [master\_database\_name](#input\_master\_database\_name) | n/a | `string` | n/a | yes |
| <a name="input_master_password"></a> [master\_password](#input\_master\_password) | n/a | `string` | `null` | no |
| <a name="input_master_username"></a> [master\_username](#input\_master\_username) | n/a | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | n/a | yes |
| <a name="input_preferred_backup_window"></a> [preferred\_backup\_window](#input\_preferred\_backup\_window) | n/a | `string` | `null` | no |
| <a name="input_preferred_maintenance_window"></a> [preferred\_maintenance\_window](#input\_preferred\_maintenance\_window) | n/a | `string` | `null` | no |
| <a name="input_publicly_accessible"></a> [publicly\_accessible](#input\_publicly\_accessible) | n/a | `bool` | `false` | no |
| <a name="input_random_password_length"></a> [random\_password\_length](#input\_random\_password\_length) | n/a | `number` | `20` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ARN of the Lightsail instance. |
| <a name="output_master_password"></a> [master\_password](#output\_master\_password) | The password of the db. |
<!-- END_TF_DOCS -->
