terraform {
  required_version = ">= 0.13.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.39"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = ">= 2.21"
    }
  }
}
