locals {
  lambdas_path            = "${path.module}/lambdas"
  layers_path             = "${path.module}/layers"
  namespaced_service_name = "${var.service_name}-${var.env}"

  common_tags = {
    Project   = "Lambda Layers with Terraform"
    CreatedAt = formatdate("YYYY-MM-DD", timestamp())
    ManagedBy = "Terraform"
    Owner     = "Arthur Vinicius"
  }

  lambdas = {
    get = {
      description = "Get url cat_api"
      memory      = 128
      timeout     = 5
    }
  }
}
