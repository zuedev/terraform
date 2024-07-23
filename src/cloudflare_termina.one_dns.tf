resource "cloudflare_record" "termina-dot-digital_root_cname" {
  zone_id = data.cloudflare_zones.termina-dot-digital.zones.0.id

  comment = "TF: Apex domain to CF pages"

  type    = "CNAME"
  name    = "termina.one"
  value   = "www-termina-one.pages.dev"
  proxied = true

  allow_overwrite = true
}

resource "cloudflare_record" "termina-dot-digital_www_cname" {
  zone_id = data.cloudflare_zones.termina-dot-digital.zones.0.id

  comment = "TF: www subdomain to apex domain"

  type    = "CNAME"
  name    = "www"
  value   = "termina.one"
  proxied = true

  allow_overwrite = true
}
