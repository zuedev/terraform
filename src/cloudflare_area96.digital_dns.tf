resource "cloudflare_record" "area96-dot-digital_root_cname" {
  zone_id = data.cloudflare_zones.area96-dot-digital.zones.0.id

  comment = "TF: Apex domain to CF pages"

  type    = "CNAME"
  name    = "area96.digital"
  value   = "www-area96-digital.pages.dev"
  proxied = true

  allow_overwrite = true
}

resource "cloudflare_record" "area96-dot-digital_www_cname" {
  zone_id = data.cloudflare_zones.area96-dot-digital.zones.0.id

  comment = "TF: www subdomain to apex domain"

  type    = "CNAME"
  name    = "www"
  value   = "area96.digital"
  proxied = true

  allow_overwrite = true
}
