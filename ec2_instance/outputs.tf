output "ec2_instances" {
  description = "EC2 list"
  value       = try(module.ec2_instances, "")
}

output "aws_eip" {
  description = "Elastic IP list"
  value       = try(aws_eip.this[*].public_ip, [])
}
