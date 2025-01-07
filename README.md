# terraform-aws-tardigrade-service-quota

Terraform module to manage an AWS Service Quota

<!-- BEGIN TFDOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.0 |

## Resources

| Name | Type |
|------|------|
| [aws_servicequotas_service_quota.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/servicequotas_service_quota) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_service_quota"></a> [service\_quota](#input\_service\_quota) | Object of attributes for the AWS Service Quota | <pre>object({<br/>    value        = number<br/>    service_code = string<br/>    quota_code   = optional(string)<br/>    quota_name   = optional(string)<br/>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_service_quota"></a> [service\_quota](#output\_service\_quota) | Object of attributes for the AWS Service Quota |

<!-- END TFDOCS -->
