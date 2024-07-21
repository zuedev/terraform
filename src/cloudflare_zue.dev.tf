data "cloudflare_zones" "zue-dot-dev" {
  filter {
    name = "zue.dev"
  }
}

resource "cloudflare_record" "zue-dot-dev_root_cname" {
  zone_id = data.cloudflare_zones.zue-dot-dev.zones.0.id

  comment = "TF: Apex domain to CF pages"

  type    = "CNAME"
  name    = "zue.dev"
  value   = "www-zue-dev.pages.dev"
  proxied = true

  allow_overwrite = true
}

resource "cloudflare_record" "zue-dot-dev_www_cname" {
  zone_id = data.cloudflare_zones.zue-dot-dev.zones.0.id

  comment = "TF: www subdomain to apex domain"

  type    = "CNAME"
  name    = "www"
  value   = "zue.dev"
  proxied = true

  allow_overwrite = true
}
