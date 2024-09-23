# main record for the sovereign server
resource "cloudflare_record" "zue-dot-dev_sovereign_a" {
  zone_id = data.cloudflare_zones.zue-dot-dev.zones.0.id

  comment = "TF: sovereign server main"

  type    = "A"
  name    = "sovereign"
  value   = "86.139.71.16"
  proxied = false

  allow_overwrite = true
}

# wildcard
resource "cloudflare_record" "zue-dot-dev_sovereign_wildcard" {
  zone_id = data.cloudflare_zones.zue-dot-dev.zones.0.id

  comment = "TF: sovereign server wildcard"

  type    = "CNAME"
  name    = "*.sovereign"
  value   = "sovereign.zue.dev"
  proxied = false

  allow_overwrite = true
}
