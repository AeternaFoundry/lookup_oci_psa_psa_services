output "psa_psa_services_lookup_id" {
  description = "Map of id values across all psa_psa_services_lookup, keyed the same as var.psa_psa_services_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_psa_psa_services.psa_psa_services_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "psa_psa_services_lookup_display_name" {
  description = "Map of display_name values across all psa_psa_services_lookup, keyed the same as var.psa_psa_services_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.oci_psa_psa_services.psa_psa_services_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "psa_psa_services_lookup_filter" {
  description = "Map of filter values across all psa_psa_services_lookup, keyed the same as var.psa_psa_services_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_psa_psa_services.psa_psa_services_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "psa_psa_services_lookup_psa_service_collection" {
  description = "Map of psa_service_collection values across all psa_psa_services_lookup, keyed the same as var.psa_psa_services_lookup except keys with no psa_service_collection are omitted"
  value       = { for k, v in data.oci_psa_psa_services.psa_psa_services_lookup : k => v.psa_service_collection if v.psa_service_collection != null && length(v.psa_service_collection) > 0 }
}
output "psa_psa_services_lookup_service_id" {
  description = "Map of service_id values across all psa_psa_services_lookup, keyed the same as var.psa_psa_services_lookup except keys with no service_id are omitted"
  value       = { for k, v in data.oci_psa_psa_services.psa_psa_services_lookup : k => v.service_id if v.service_id != null && length(v.service_id) > 0 }
}

