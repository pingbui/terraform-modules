output "cluster_parameter_name" {
  description = "The name of the cluster parameter"
  value       = join("", aws_rds_cluster_parameter_group.this.*.name)
}

output "db_parameter_name" {
  description = "The name of the db parameter"
  value       = join("", aws_db_parameter_group.this.*.name)
}