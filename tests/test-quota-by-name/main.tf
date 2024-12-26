module "quota_by_name" {
  source = "../../"

  service_quota = {
    value        = "10"
    service_code = "vpc"
    quota_name   = "VPCs per Region"
  }
}
