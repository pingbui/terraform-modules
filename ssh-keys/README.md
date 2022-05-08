## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_local"></a> [local](#provider\_local) | 2.1.0 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | 3.1.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [local_file.private](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [tls_private_key.ssh](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_names"></a> [names](#input\_names) | A name list of ssh keys | `list(string)` | <pre>[<br>  "bastion"<br>]</pre> | no |
| <a name="input_rsa_bits"></a> [rsa\_bits](#input\_rsa\_bits) | RSA bits for keys | `number` | `2048` | no |
| <a name="input_save_dir"></a> [save\_dir](#input\_save\_dir) | The dir to save ssh private keys to | `string` | `"."` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_public_keys"></a> [public\_keys](#output\_public\_keys) | A map of public keys |
