module "quota_by_code" {
  source = "../../"

  service_quota = {
    value        = "10"
    service_code = "vpc"
    quota_code   = "L-F678F1CE"
  }
}
