# --------------------------------------------------------------------------------------------------
# Outputs from the root module.
# --------------------------------------------------------------------------------------------------

output "audit_bucket" {
  description = "The S3 bucket used for storing audit logs."
  value       = module.audit_log_bucket.this_bucket
}

# --------------------------------------------------------------------------------------------------
# Outputs from alarm-baseline module.
# --------------------------------------------------------------------------------------------------

output "alarm_sns_topic" {
  description = "The SNS topic to which CloudWatch Alarms will be sent."
  value       = module.alarm_baseline.alarm_sns_topic
}

# --------------------------------------------------------------------------------------------------
# Outputs from cloudtrail-baseline module.
# --------------------------------------------------------------------------------------------------

output "cloudtrail" {
  description = "The trail for recording events in all regions."
  value       = module.cloudtrail_baseline.cloudtrail
}

output "cloudtrail_sns_topic" {
  description = "The sns topic linked to the cloudtrail."
  value       = module.cloudtrail_baseline.cloudtrail_sns_topic
}

output "cloudtrail_kms_key" {
  description = "The KMS key used for encrypting CloudTrail events."
  value       = module.cloudtrail_baseline.kms_key
}

output "cloudtrail_log_delivery_iam_role" {
  description = "The IAM role used for delivering CloudTrail events to CloudWatch Logs."
  value       = module.cloudtrail_baseline.log_delivery_iam_role
}

output "cloudtrail_log_group" {
  description = "The CloudWatch Logs log group which stores CloudTrail events."
  value       = module.cloudtrail_baseline.log_group
}

# --------------------------------------------------------------------------------------------------
# Outputs from iam-baseline module.
# --------------------------------------------------------------------------------------------------

output "master_iam_role" {
  description = "The IAM role used for the master user."
  value       = module.iam_baseline.master_iam_role
}

output "manager_iam_role" {
  description = "The IAM role used for the manager user."
  value       = module.iam_baseline.manager_iam_role
}

output "support_iam_role" {
  description = "The IAM role used for the support user."
  value       = module.iam_baseline.support_iam_role
}

