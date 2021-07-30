locals {
  create_origin_access_identity = var.create_origin_access_identity && length(keys(var.origin_access_identities)) > 0
}

resource "aws_cloudfront_origin_access_identity" "this" {
  for_each = local.create_origin_access_identity ? var.origin_access_identities : {}

  comment = each.value
}

data "aws_iam_policy_document" "s3" {
  count = var.s3_origin_bucket == "" ? 0 : 1

  statement {
    sid = "S3GetObjectForCloudFront"

    actions   = ["s3:GetObject"]
    resources = ["arn:aws:s3:::${var.s3_origin_bucket}/*"]

    principals {
      type        = "AWS"
      identifiers = [for v in aws_cloudfront_origin_access_identity.this : v.iam_arn]
    }
  }

  statement {
    sid = "S3ListBucketForCloudFront"

    actions   = ["s3:ListBucket"]
    resources = ["arn:aws:s3:::${var.s3_origin_bucket}"]

    principals {
      type        = "AWS"
      identifiers = [for v in aws_cloudfront_origin_access_identity.this : v.iam_arn]
    }
  }
}

resource "aws_s3_bucket_policy" "s3" {
  count = var.s3_origin_bucket == "" ? 0 : 1

  bucket = var.s3_origin_bucket
  policy = join("", data.aws_iam_policy_document.s3.*.json)
}