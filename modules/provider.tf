terraform {
  required_providers {
    datadog = {
      source = "DataDog/datadog"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.46.0"
    }
  }
}

provider "datadog" {
  api_key = var.datadog_api_key
  app_key = var.datadog_app_key
}
