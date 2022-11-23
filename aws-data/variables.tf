variable "aws_amis" {
  type = map(any)
  default = {
    "ubuntu1804" = {
      owners      = ["099720109477"]
      most_recent = true
      filters = {
        name                = ["ubuntu-minimal/images/*/ubuntu-bionic-18.04-*"]
        virtualization-type = ["hvm"]
        root-device-type    = ["ebs"]
        architecture        = ["x86_64"]
      }
    }
    "amazonlinux2" = {
      owners      = ["amazon"]
      most_recent = true
      filters = {
        name                = ["amzn2-ami-hvm*-gp*"]
        virtualization-type = ["hvm"]
        root-device-type    = ["ebs"]
        architecture        = ["x86_64"]
      }
    }
    "ubuntu2004" = {
      owners      = ["099720109477"]
      most_recent = true
      filters = {
        name                = ["ubuntu/images/*/ubuntu-focal-20.04-amd64-*"]
        virtualization-type = ["hvm"]
        root-device-type    = ["ebs"]
        architecture        = ["x86_64"]
      }
    }
  }
}
