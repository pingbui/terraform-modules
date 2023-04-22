provider "cloudflare" {
  email     = var.cf_email
  api_key   = var.cf_api_key
  api_token = var.cf_api_token
}

data "cloudflare_zones" "this" {
  filter {
    name   = var.domain_name
    status = "active"
    paused = false
  }
}

resource "aws_ses_domain_identity" "this" {
  domain = var.domain_name
}

## Verify:
resource "cloudflare_record" "verify" {
  zone_id = lookup(data.cloudflare_zones.this.zones[0], "id")
  name    = "_amazonses.${var.domain_name}"
  value   = aws_ses_domain_identity.this.verification_token
  type    = "TXT"
  proxied = false
  ttl     = "1"
}

## DKIM:
resource "aws_ses_domain_dkim" "this" {
  domain = aws_ses_domain_identity.this.domain
}

resource "cloudflare_record" "dkim" {
  count   = 3
  zone_id = lookup(data.cloudflare_zones.this.zones[0], "id")
  name    = "${element(aws_ses_domain_dkim.this.dkim_tokens, count.index)}._domainkey.${var.domain_name}"
  value   = "${element(aws_ses_domain_dkim.this.dkim_tokens, count.index)}.dkim.amazonses.com"
  type    = "CNAME"
  proxied = false
  ttl     = "1"
}
