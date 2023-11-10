data "aws_s3_bucket" "origin_bucket" {
  bucket = var.origin_bucket
}

#tfsec:ignore:aws-cloudfront-use-secure-tls-policy tfsec:ignore:aws-cloudfront-enable-logging
module "cloudfront" {
  source  = "terraform-aws-modules/cloudfront/aws"
  version = "v3.2.1"

  create_distribution = var.create_distribution
  comment             = var.comment
  aliases             = var.aliases             # []
  enabled             = var.enabled             # true
  price_class         = var.price_class         # "PriceClass_All"
  http_version        = var.http_version        # "http2and3"
  is_ipv6_enabled     = var.is_ipv6_enabled     # true
  retain_on_delete    = var.retain_on_delete    # false
  wait_for_deployment = var.wait_for_deployment # false
  viewer_certificate  = var.viewer_certificate
  web_acl_id          = var.web_acl_id # null
  tags                = var.tags

  ## Origins and behaviors:
  create_origin_access_identity = true
  origin_access_identities = {
    "${var.origin_name}" = var.comment
  }

  origin = {
    s3_bucket = {
      domain_name = data.aws_s3_bucket.origin_bucket.bucket_regional_domain_name
      origin_path = var.origin_path
      s3_origin_config = {
        origin_access_identity = var.origin_name
      }
    }
  }

  default_cache_behavior = {
    target_origin_id       = var.origin_name
    viewer_protocol_policy = try(var.default_cache_behavior.viewer_protocol_policy, "redirect-to-https")

    allowed_methods = try(var.default_cache_behavior.allowed_methods, ["GET", "HEAD", "OPTIONS"])
    cached_methods  = try(var.default_cache_behavior.cached_methods, ["GET", "HEAD"])
    compress        = try(var.default_cache_behavior.compress, true)
    query_string    = try(var.default_cache_behavior.query_string, true)
    default_ttl     = try(var.default_cache_behavior.default_ttl, 0)
    max_ttl         = try(var.default_cache_behavior.max_ttl, 0)
    min_ttl         = try(var.default_cache_behavior.min_ttl, 0)
    headers         = try(var.default_cache_behavior.headers, ["Access-Control-Request-Headers", "Access-Control-Request-Method", "Origin"])
    cookies_forward = try(var.default_cache_behavior.cookies_forward, "all")
  }

  ordered_cache_behavior = var.ordered_cache_behavior
  custom_error_response  = var.custom_error_response
  default_root_object    = var.default_root_object

  ## Logs:
  logging_config = var.logging_config

}

data "aws_iam_policy_document" "s3_policy" {
  statement {
    sid = "S3GetObjectForCloudFront"

    actions   = ["s3:GetObject"]
    resources = ["arn:aws:s3:::${var.origin_bucket}/*"]

    principals {
      type        = "AWS"
      identifiers = module.cloudfront.cloudfront_origin_access_identity_iam_arns
    }
  }

  statement {
    sid     = "ForceSSLOnlyAccess"
    effect  = "Deny"
    actions = ["s3:*"]
    resources = [
      "arn:aws:s3:::${var.origin_bucket}",
      "arn:aws:s3:::${var.origin_bucket}/*"
    ]

    principals {
      identifiers = ["*"]
      type        = "*"
    }

    condition {
      test     = "Bool"
      values   = ["false"]
      variable = "aws:SecureTransport"
    }
  }
}

resource "aws_s3_bucket_policy" "this" {
  bucket = var.origin_bucket
  policy = data.aws_iam_policy_document.s3_policy.json
}
