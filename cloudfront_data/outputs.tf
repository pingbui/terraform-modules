output "cloudfront_cache_policy_id" {
  description = "The identifier for the cache policy."
  value       = data.aws_cloudfront_cache_policy.this.id
}

output "cloudfront_request_policy_id" {
  description = "The identifier for the origin request policy."
  value       = data.aws_cloudfront_origin_request_policy.this.id
}

output "cloudfront_response_headers_policy_id" {
  description = "The identifier for the origin response headers policy."
  value       = data.aws_cloudfront_response_headers_policy.this.id
}