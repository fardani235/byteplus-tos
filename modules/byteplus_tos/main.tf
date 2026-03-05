terraform {
  required_providers {
    byteplus = {
      source = "byteplus-sdk/byteplus"
    }
  }
}

resource "byteplus_tos_bucket" "this" {
  bucket_name   = var.bucket_name
  public_acl    = var.public_acl
  az_redundancy = var.az_redundancy
  project_name  = var.project_name
}
