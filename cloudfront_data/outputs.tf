output "cloudfront_cache_policy_id" {
  description = "The origin access identities created."
  value       = data.aws_cloudfront_cache_policy.this.id
}

output "cloudfront_request_policy_id" {
  description = "The IDS of the origin access identities created."
  value       = data.aws_cloudfront_origin_request_policy.this.id
}