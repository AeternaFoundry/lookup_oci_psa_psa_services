data "oci_psa_psa_services" "psa_psa_services_lookup" {
  for_each = var.psa_psa_services_lookup

  display_name = each.value.display_name
  service_id   = each.value.service_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

