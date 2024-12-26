output "service_quota" {
  description = "Object of attributes for the AWS Service Quota"
  value       = aws_servicequotas_service_quota.this
}
