output "tos_bucket_id" {
  description = "ID bucket TOS"
  value       = byteplus_tos_bucket.this.id
}

output "tos_bucket_location" {
  description = "Region/location bucket TOS"
  value       = byteplus_tos_bucket.this.location
}

output "tos_bucket_intranet_endpoint" {
  description = "Endpoint intranet bucket TOS"
  value       = byteplus_tos_bucket.this.intranet_endpoint
}

output "tos_bucket_extranet_endpoint" {
  description = "Endpoint extranet bucket TOS"
  value       = byteplus_tos_bucket.this.extranet_endpoint
}
