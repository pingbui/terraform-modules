data "aws_cloudfront_cache_policy" "this" {
  name = var.cache_policy_name
}

data "aws_cloudfront_origin_request_policy" "this" {
  name = var.request_policy_name
}