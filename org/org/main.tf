resource "aws_organizations_organization" "this" {
  feature_set = var.feature_set
  aws_service_access_principals = [
    "aws-artifact-account-sync.amazonaws.com",
    "backup.amazonaws.com",
    "cloudtrail.amazonaws.com",
    "config.amazonaws.com",
    "ds.amazonaws.com",
    "license-manager.amazonaws.com",
    "ram.amazonaws.com",
    "servicecatalog.amazonaws.com",
    "ssm.amazonaws.com",
    "sso.amazonaws.com",
    "tagpolicies.tag.amazonaws.com",
  ]
  enabled_policy_types = [
    "BACKUP_POLICY",
    "SERVICE_CONTROL_POLICY",
    "TAG_POLICY",
  ]
}