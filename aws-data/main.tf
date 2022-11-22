data "aws_region" "selected" {}

data "aws_availability_zones" "available" {}

data "aws_ami" "this" {
  for_each = var.aws_amis

  most_recent      = try(each.value.most_recent, true)
  owners           = try(each.value.owners, ["amazon"])
  name_regex       = try(each.value.name_regex, null)
  executable_users = try(each.value.executable_users, null)

  dynamic "filter" {
    for_each = try(each.value.filters, {})
    content {
      name   = filter.key
      values = [filter.value]
    }
  }
}
