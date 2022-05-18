## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 4.19.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_compute_image.centos7](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/compute_image) | data source |
| [google_compute_image.centos8](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/compute_image) | data source |
| [google_compute_image.centos9](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/compute_image) | data source |
| [google_compute_image.ubuntu_1804_minimal](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/compute_image) | data source |
| [google_compute_image.ubuntu_2004](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/compute_image) | data source |
| [google_compute_regions.selected](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/compute_regions) | data source |
| [google_compute_zones.available](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/compute_zones) | data source |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_available_google_compute_zone_names"></a> [available\_google\_compute\_zone\_names](#output\_available\_google\_compute\_zone\_names) | A list of the Availability Zone names available to the account |
| <a name="output_centos7_self_link"></a> [centos7\_self\_link](#output\_centos7\_self\_link) | The URI of the CentOS 7 image |
| <a name="output_centos8_self_link"></a> [centos8\_self\_link](#output\_centos8\_self\_link) | The URI of the CentOS 8 image |
| <a name="output_centos9_self_link"></a> [centos9\_self\_link](#output\_centos9\_self\_link) | The URI of the CentOS 9 image |
| <a name="output_regions"></a> [regions](#output\_regions) | Details about selected GCP region |
| <a name="output_ubuntu_1804_minimal_self_link"></a> [ubuntu\_1804\_minimal\_self\_link](#output\_ubuntu\_1804\_minimal\_self\_link) | The URI of the Ubuntu 18.04 minimal image |
| <a name="output_ubuntu_2004_self_link"></a> [ubuntu\_2004\_self\_link](#output\_ubuntu\_2004\_self\_link) | The URI of the Ubuntu 20.04 image |
