variable "byteplus_region" {
  description = "BytePlus region, contoh: ap-southeast-1"
  type        = string
}

variable "byteplus_access_key" {
  description = "BytePlus Access Key"
  type        = string
  sensitive   = true
}

variable "byteplus_secret_key" {
  description = "BytePlus Secret Key"
  type        = string
  sensitive   = true
}

variable "byteplus_session_token" {
  description = "BytePlus Session Token (opsional)"
  type        = string
  default     = null
  sensitive   = true
}

variable "bucket_name" {
  description = "Nama bucket TOS (harus unik secara global)"
  type        = string
}

variable "public_acl" {
  description = "Public ACL bucket: private | public-read | public-read-write | authenticated-read | bucket-owner-read"
  type        = string
  default     = "private"

  validation {
    condition     = contains(["private", "public-read", "public-read-write", "authenticated-read", "bucket-owner-read"], var.public_acl)
    error_message = "public_acl harus salah satu: private, public-read, public-read-write, authenticated-read, bucket-owner-read."
  }
}

variable "az_redundancy" {
  description = "Redundansi AZ bucket: single-az | multi-az"
  type        = string
  default     = "single-az"

  validation {
    condition     = contains(["single-az", "multi-az"], var.az_redundancy)
    error_message = "az_redundancy harus salah satu: single-az, multi-az."
  }
}

variable "project_name" {
  description = "Nama project TOS (opsional)"
  type        = string
  default     = null
}
