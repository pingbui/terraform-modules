output "lightsail_instances" {
  value = { for v in aws_lightsail_instance.this : v.name => {
    id                 = v.id
    arn                = v.arn
    created_at         = v.created_at
    ipv6_addresses     = v.ipv6_addresses
    private_ip_address = v.private_ip_address
    public_ip_address  = v.public_ip_address
    username           = v.username
    tags               = v.tags_all
    }
  }

  description = "The created Lightsail instances."
}

output "key_pair" {
  value = try(aws_lightsail_key_pair.this[0].id, null)
}
