## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.37.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ami.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |
| [aws_region.selected](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_amis"></a> [aws\_amis](#input\_aws\_amis) | n/a | `map(any)` | <pre>{<br>  "amazonlinux2": {<br>    "filters": {<br>      "architecture": "x86_64",<br>      "name": "amzn2-ami-hvm*-gp*",<br>      "root-device-type": "ebs",<br>      "virtualization-type": "hvm"<br>    },<br>    "most_recent": true,<br>    "owners": [<br>      "amazon"<br>    ]<br>  },<br>  "ubuntu1804": {<br>    "filters": {<br>      "architecture": "x86_64",<br>      "name": "ubuntu-minimal/images/*/ubuntu-bionic-18.04-*",<br>      "root-device-type": "ebs",<br>      "virtualization-type": "hvm"<br>    },<br>    "most_recent": true,<br>    "owners": [<br>      "099720109477"<br>    ]<br>  },<br>  "ubuntu2004": {<br>    "filters": {<br>      "architecture": "x86_64",<br>      "name": "ubuntu/images/*/ubuntu-focal-20.04-amd64-*",<br>      "root-device-type": "ebs",<br>      "virtualization-type": "hvm"<br>    },<br>    "most_recent": true,<br>    "owners": [<br>      "099720109477"<br>    ]<br>  }<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_available_aws_availability_zones_names"></a> [available\_aws\_availability\_zones\_names](#output\_available\_aws\_availability\_zones\_names) | A list of the Availability Zone names available to the account |
| <a name="output_available_aws_availability_zones_zone_ids"></a> [available\_aws\_availability\_zones\_zone\_ids](#output\_available\_aws\_availability\_zones\_zone\_ids) | A list of the Availability Zone IDs available to the account |
| <a name="output_aws_ami_ids"></a> [aws\_ami\_ids](#output\_aws\_ami\_ids) | A list of AMI IDs |
| <a name="output_aws_region"></a> [aws\_region](#output\_aws\_region) | Details about selected AWS region |
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.37.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ami.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |
| [aws_region.selected](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_amis"></a> [aws\_amis](#input\_aws\_amis) | A map of AMIs will be used | `map(any)` | `{}` | no |
| <a name="input_use_default"></a> [use\_default](#input\_use\_default) | Whether to use default amis | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_available_aws_availability_zones_names"></a> [available\_aws\_availability\_zones\_names](#output\_available\_aws\_availability\_zones\_names) | A list of the Availability Zone names available to the account |
| <a name="output_available_aws_availability_zones_zone_ids"></a> [available\_aws\_availability\_zones\_zone\_ids](#output\_available\_aws\_availability\_zones\_zone\_ids) | A list of the Availability Zone IDs available to the account |
| <a name="output_aws_ami_ids"></a> [aws\_ami\_ids](#output\_aws\_ami\_ids) | A list of AMI IDs |
| <a name="output_aws_region"></a> [aws\_region](#output\_aws\_region) | Details about selected AWS region |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
