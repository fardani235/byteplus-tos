required_providers {
  byteplus = {
    source  = "byteplus-sdk/byteplus"
    version = "~> 0.0.23"
  }
}

provider "byteplus" "this" {
  config {
    region        = var.byteplus_region
    access_key    = var.byteplus_access_key
    secret_key    = var.byteplus_secret_key
    session_token = var.byteplus_session_token
  }
}
