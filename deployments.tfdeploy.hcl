# Ambil credential dari Terraform Cloud Variable Set (category = env)
store "varset" "byteplus_creds" {
  name     = "byteplus-credentials"
  category = "env"
}

deployment "default" {
  inputs = {
    byteplus_region     = "ap-southeast-3"
    byteplus_access_key = store.varset.byteplus_creds.BYTEPLUS_ACCESS_KEY
    byteplus_secret_key = store.varset.byteplus_creds.BYTEPLUS_SECRET_KEY

    bucket_name   = "my-company-tos-bucket-001"
    public_acl    = "private"
    az_redundancy = "single-az"
    # project_name = "your-project-name"
  }
}
