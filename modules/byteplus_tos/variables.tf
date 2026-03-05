variable "bucket_name" {
  description = "Nama bucket TOS (harus unik secara global)"
  type        = string
}

variable "public_acl" {
  description = "Public ACL bucket: private | public-read | public-read-write | authenticated-read | bucket-owner-read"
  type        = string
  default     = "private"

  validation {
    condition = contains(
      [
        "private",
        "public-read",
        "public-read-write",
        "authenticated-read",
        "bucket-owner-read",
      ],
      var.public_acl
    )
    error_message = "public_acl tidak valid."
  }
}

variable "az_redundancy" {
  description = "Redundansi AZ bucket: single-az | multi-az"
  type        = string
  default     = "single-az"

  validation {
    condition     = contains(["single-az", "multi-az"], var.az_redundancy)
    error_message = "az_redundancy tidak valid."
  }
}

variable "project_name" {
  description = "Nama project TOS (opsional)"
  type        = string
  default     = null
}
