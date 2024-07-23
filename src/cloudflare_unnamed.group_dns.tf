resource "cloudflare_record" "unnamed-dot-group_root_cname" {
  zone_id = data.cloudflare_zones.unnamed-dot-group.zones.0.id

  comment = "TF: Apex domain to cf pages"

  type    = "CNAME"
  name    = "unnamed.group"
  value   = "www-unnamed-group.pages.dev"
  proxied = false

  allow_overwrite = true
}

resource "cloudflare_record" "unnamed-dot-group_www_cname" {
  zone_id = data.cloudflare_zones.unnamed-dot-group.zones.0.id

  comment = "TF: www subdomain to apex domain"

  type    = "CNAME"
  name    = "www"
  value   = "unnamed.group"
  proxied = true

  allow_overwrite = true
}
