variable "byteplus_region" {
  type = string
}

variable "byteplus_access_key" {
  type      = string
  sensitive = true
  ephemeral = true
}

variable "byteplus_secret_key" {
  type      = string
  sensitive = true
  ephemeral = true
}

variable "byteplus_session_token" {
  type      = string
  default   = null
  sensitive = true
  ephemeral = true
}

variable "bucket_name" {
  type = string
}

variable "public_acl" {
  type    = string
  default = "private"
}

variable "az_redundancy" {
  type    = string
  default = "single-az"
}

variable "project_name" {
  type    = string
  default = null
}
