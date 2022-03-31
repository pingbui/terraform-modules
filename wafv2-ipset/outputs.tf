output "id" {
  description = "A unique identifier for the set"
  value       = aws_wafv2_ip_set.this.id
}

output "arn" {
  description = "The Amazon Resource Name (ARN) that identifies the cluster"
  value       = aws_wafv2_ip_set.this.arn
}