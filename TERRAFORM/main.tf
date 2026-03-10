terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.61.0"
    }
  }
}

provider "azurerm" {
    subscription_id = "a10a98e5-51ba-4406-b380-5819e76b9384"
    features {}
}

variable "environment" {
  type        = string
  default     = "casopractico2"
}

locals {
  common_tags = {
    environment = var.environment
  }
}
