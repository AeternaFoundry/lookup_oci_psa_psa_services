variable "psa_psa_services_lookup" {
  description = <<EOT
Map of psa_psa_services_lookup, attributes below
Optional:
    - display_name
    - service_id
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    display_name = optional(string)
    service_id   = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

