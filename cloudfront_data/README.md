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
| [aws_cloudfront_cache_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/cloudfront_cache_policy) | data source |
| [aws_cloudfront_origin_request_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/cloudfront_origin_request_policy) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cache_policy_name"></a> [cache\_policy\_name](#input\_cache\_policy\_name) | A unique name to identify the cache policy. | `string` | `"CachingDisabled"` | no |
| <a name="input_request_policy_name"></a> [request\_policy\_name](#input\_request\_policy\_name) | Unique name to identify the origin request policy. | `string` | `"AllViewer"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloudfront_cache_policy_id"></a> [cloudfront\_cache\_policy\_id](#output\_cloudfront\_cache\_policy\_id) | The origin access identities created. |
| <a name="output_cloudfront_request_policy_id"></a> [cloudfront\_request\_policy\_id](#output\_cloudfront\_request\_policy\_id) | The IDS of the origin access identities created. |
