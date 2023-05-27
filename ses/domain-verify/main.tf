variable "domain_name" {
  description = "The domain name of CloudFlare DNS records to register with this CloudFront distribution"
  type        = string
}

data "aws_route53_zone" "public" {
  name         = var.domain_name
  private_zone = false
}

resource "aws_ses_domain_identity" "this" {
  domain = var.domain_name
}

## Verify:
resource "aws_route53_record" "verify" {
  zone_id = data.aws_route53_zone.public.zone_id
  name    = "_amazonses.${var.domain_name}"
  records = [aws_ses_domain_identity.this.verification_token]
  type    = "TXT"
  ttl     = "600"
}

## DKIM:
resource "aws_ses_domain_dkim" "this" {
  domain = aws_ses_domain_identity.this.domain
}

resource "aws_route53_record" "dkim" {
  count   = 3
  zone_id = data.aws_route53_zone.public.zone_id
  name    = "${element(aws_ses_domain_dkim.this.dkim_tokens, count.index)}._domainkey.${var.domain_name}"
  records = ["${element(aws_ses_domain_dkim.this.dkim_tokens, count.index)}.dkim.amazonses.com"]
  type    = "CNAME"
  ttl     = "600"
}
