# main record for the baldur server
resource "cloudflare_record" "zue-dot-dev_baldur_a" {
  zone_id = data.cloudflare_zones.zue-dot-dev.zones.0.id

  comment = "TF: baldur server main (hetzner cloud)"

  type    = "A"
  name    = "baldur"
  value   = "116.203.25.123"
  proxied = false

  allow_overwrite = true
}

# wildcard
resource "cloudflare_record" "zue-dot-dev_baldur_wildcard" {
  zone_id = data.cloudflare_zones.zue-dot-dev.zones.0.id

  comment = "TF: baldur server wildcard"

  type    = "CNAME"
  name    = "*.baldur"
  value   = "baldur.zue.dev"
  proxied = false

  allow_overwrite = true
}
