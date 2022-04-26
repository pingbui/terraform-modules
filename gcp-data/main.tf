data "google_compute_regions" "selected" {}

data "google_compute_zones" "available" {}

data "google_compute_image" "ubuntu_1804_minimal" {
  family = "ubuntu-minimal-1804-lts"
  project = "ubuntu-os-cloud"
}

data "google_compute_image" "ubuntu_2004" {
  family = "ubuntu-2004-lts"
  project = "ubuntu-os-cloud"
}

data "google_compute_image" "centos7" {
  family = "centos-7"
  project = "centos-cloud"
}

data "google_compute_image" "centos8" {
  family = "centos-8"
  project = "centos-cloud"
}