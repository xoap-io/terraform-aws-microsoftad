terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.8.0"
    }
    mysql = {
      source  = "winebarrel/mysql"
      version = ">=1.9.0-p8"
    }
    rancher2 = {
      source  = "rancher/rancher2"
      version = ">= 1.23.0"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.14.0"
    }
  }
  required_version = ">=1.1.6"
}
