output "vpc_id" {
  value = data.aws_vpc.this.id
}

output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = data.aws_subnets.public.ids
}

output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = data.aws_subnets.private.ids
}
