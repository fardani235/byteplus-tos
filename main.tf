terraform {
  required_version = ">= 1.4.0"

  required_providers {
    byteplus = {
      source  = "byteplus-sdk/byteplus"
      version = "~> 0.0.23"
    }
  }

  cloud {  
    organization = "raspigeeek" 

    workspaces { 
      name = "tm-workspace" 
    } 
  }
}

provider "byteplus" {
  region        = var.byteplus_region
  access_key    = var.byteplus_access_key
  secret_key    = var.byteplus_secret_key
  session_token = var.byteplus_session_token
}

resource "byteplus_tos_bucket" "this" {
  bucket_name   = var.bucket_name
  public_acl    = var.public_acl
  az_redundancy = var.az_redundancy
  project_name  = var.project_name
}
