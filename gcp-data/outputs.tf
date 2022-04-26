output "regions" {
  description = "Details about selected GCP region"
  value       = data.google_compute_regions.selected.names
}

output "available_google_compute_zone_names" {
  description = "A list of the Availability Zone names available to the account"
  value       = data.google_compute_zones.available.names
}

output "ubuntu_1804_minimal_self_link" {
  description = "The URI of the Ubuntu 18.04 minimal image"
  value       = data.google_compute_image.ubuntu_1804_minimal.self_link
}

output "ubuntu_2004_self_link" {
  description = "The URI of the Ubuntu 20.04 image"
  value       = data.google_compute_image.ubuntu_2004.self_link
}

output "centos7_self_link" {
  description = "The URI of the CentOS 7 image"
  value       = data.google_compute_image.centos7.self_link
}

output "centos8_self_link" {
  description = "The URI of the CentOS 8 image"
  value       = data.google_compute_image.centos8.self_link
}

output "centos9_self_link" {
  description = "The URI of the CentOS 9 image"
  value       = data.google_compute_image.centos9.self_link
}