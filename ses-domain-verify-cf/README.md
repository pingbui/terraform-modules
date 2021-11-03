## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.39 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | >= 2.21 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.39 |
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | >= 2.21 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ses_domain_dkim.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ses_domain_dkim) | resource |
| [aws_ses_domain_identity.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ses_domain_identity) | resource |
| [cloudflare_record.dkim](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/record) | resource |
| [cloudflare_record.verify](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/record) | resource |
| [cloudflare_zones.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/data-sources/zones) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cf_api_key"></a> [cf\_api\_key](#input\_cf\_api\_key) | The Cloudflare API key. | `string` | `null` | no |
| <a name="input_cf_api_token"></a> [cf\_api\_token](#input\_cf\_api\_token) | The Cloudflare API Token. This is an alternative to email+api\_key. If both are specified, api\_token will be used over email+api\_key fields. | `string` | `null` | no |
| <a name="input_cf_email"></a> [cf\_email](#input\_cf\_email) | The email associated with the account. | `string` | `null` | no |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | The domain name of CloudFlare DNS records to register with this CloudFront distribution | `string` | n/a | yes |

## Outputs

No outputs.
