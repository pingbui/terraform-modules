resource "google_project_service" "compute" {
  service = "compute.googleapis.com"

  timeouts {
    create = "30m"
    update = "40m"
  }

  disable_dependent_services = true
}

data "google_compute_regions" "selected" { depends_on = [google_project_service.compute] }

data "google_compute_zones" "available" { depends_on = [google_project_service.compute] }

data "google_compute_image" "ubuntu_1804_minimal" {
  family  = "ubuntu-minimal-1804-lts"
  project = "ubuntu-os-cloud"
}

data "google_compute_image" "ubuntu_2004" {
  family  = "ubuntu-2004-lts"
  project = "ubuntu-os-cloud"

  depends_on = [google_project_service.compute]
}

data "google_compute_image" "centos7" {
  family  = "centos-7"
  project = "centos-cloud"

  depends_on = [google_project_service.compute]
}

data "google_compute_image" "centos8" {
  family  = "centos-stream-8"
  project = "centos-cloud"

  depends_on = [google_project_service.compute]
}

data "google_compute_image" "centos9" {
  family  = "centos-stream-9"
  project = "centos-cloud"

  depends_on = [google_project_service.compute]
}