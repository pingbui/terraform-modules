## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.24.0 |
| <a name="provider_local"></a> [local](#provider\_local) | 2.4.0 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | 4.0.4 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_key_pair.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) | resource |
| [aws_ssm_parameter.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [local_file.private](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [tls_private_key.ssh](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_algorithm"></a> [algorithm](#input\_algorithm) | The encrypt algorithm | `string` | `"RSA"` | no |
| <a name="input_create_key_pair"></a> [create\_key\_pair](#input\_create\_key\_pair) | Controls if key pair should be created | `bool` | `true` | no |
| <a name="input_key_id"></a> [key\_id](#input\_key\_id) | KMS key ID or ARN for encrypting a parameter (when type is SecureString) | `string` | `"alias/aws/ssm"` | no |
| <a name="input_key_name_prefix"></a> [key\_name\_prefix](#input\_key\_name\_prefix) | Creates a unique name beginning with the specified prefix. Conflicts with key\_name. | `string` | `null` | no |
| <a name="input_names"></a> [names](#input\_names) | A name list of ssh keys | `list(string)` | <pre>[<br>  "bastion"<br>]</pre> | no |
| <a name="input_rsa_bits"></a> [rsa\_bits](#input\_rsa\_bits) | RSA bits for keys | `number` | `2048` | no |
| <a name="input_save_dir"></a> [save\_dir](#input\_save\_dir) | The dir to save ssh private keys to | `string` | `"."` | no |
| <a name="input_save_file"></a> [save\_file](#input\_save\_file) | Whether to save file to local. | `bool` | `true` | no |
| <a name="input_save_ssm"></a> [save\_ssm](#input\_save\_ssm) | Whether to save file to SSM Param. | `bool` | `true` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to key pair resource. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_fingerprints"></a> [fingerprints](#output\_fingerprints) | The MD5 public key fingerprint as specified in section 4 of RFC 4716. |
| <a name="output_key_names"></a> [key\_names](#output\_key\_names) | The key pair name. |
| <a name="output_key_pair_ids"></a> [key\_pair\_ids](#output\_key\_pair\_ids) | The key pair ID. |
| <a name="output_private_keys"></a> [private\_keys](#output\_private\_keys) | A map of private keys |
| <a name="output_public_keys"></a> [public\_keys](#output\_public\_keys) | A map of public keys |
