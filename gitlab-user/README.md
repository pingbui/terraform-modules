## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.28 |
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_gitlab"></a> [gitlab](#provider\_gitlab) | >= 3.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [gitlab_user.this](https://registry.terraform.io/providers/hashicorp/gitlab/latest/docs/resources/user) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_can_create_group"></a> [can\_create\_group](#input\_can\_create\_group) | (Optional) Boolean, defaults to false. Whether to allow the user to create groups. | `bool` | `false` | no |
| <a name="input_email"></a> [email](#input\_email) | (Required) The email of the user. | `string` | n/a | yes |
| <a name="input_gitlab_token"></a> [gitlab\_token](#input\_gitlab\_token) | The Token of Gitlab | `string` | n/a | yes |
| <a name="input_gitlab_url"></a> [gitlab\_url](#input\_gitlab\_url) | The URL of Gitlab API | `string` | `"https://git.hblab.vn/api/v4/"` | no |
| <a name="input_is_admin"></a> [is\_admin](#input\_is\_admin) | (Optional) Boolean, defaults to false. Whether to enable administrative priviledges for the user. | `bool` | `false` | no |
| <a name="input_is_external"></a> [is\_external](#input\_is\_external) | (Optional) Boolean, defaults to false. Whether a user has access only to some internal or private projects | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | (Required) The name of the user. | `string` | n/a | yes |
| <a name="input_password"></a> [password](#input\_password) | (Optional) The email of the user. | `string` | `null` | no |
| <a name="input_projects_limit"></a> [projects\_limit](#input\_projects\_limit) | (Optional) Integer, defaults to 0. Number of projects user can create. | `number` | `0` | no |
| <a name="input_reset_password"></a> [reset\_password](#input\_reset\_password) | (Optional) Boolean, defaults to true. Send user password reset link. | `bool` | `true` | no |
| <a name="input_skip_confirmation"></a> [skip\_confirmation](#input\_skip\_confirmation) | (Optional) Boolean, defaults to true. Whether to skip confirmation. | `bool` | `true` | no |
| <a name="input_username"></a> [username](#input\_username) | (Required) The username of the user. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The unique id assigned to the user by the GitLab server. |
