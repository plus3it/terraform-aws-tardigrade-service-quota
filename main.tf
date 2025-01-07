resource "aws_servicequotas_service_quota" "this" {
  quota_code   = data.aws_servicequotas_service_quota.this.quota_code
  service_code = data.aws_servicequotas_service_quota.this.service_code
  value        = var.service_quota.value
}

data "aws_servicequotas_service_quota" "this" {
  quota_code   = var.service_quota.quota_code
  quota_name   = var.service_quota.quota_name
  service_code = var.service_quota.service_code
}
