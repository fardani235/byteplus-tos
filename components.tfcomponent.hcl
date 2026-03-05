component "tos_bucket" {
  source = "./modules/byteplus_tos"

  providers = {
    byteplus = provider.byteplus.this
  }

  inputs = {
    bucket_name   = var.bucket_name
    public_acl    = var.public_acl
    az_redundancy = var.az_redundancy
    project_name  = var.project_name
  }
}
