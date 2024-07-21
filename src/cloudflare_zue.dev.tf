data "cloudflare_zones" "zue-dot-dev" {
  filter {
    name = "zue.dev"
  }
}

resource "cloudflare_record" "zue-dot-dev_root_cname" {
  zone_id = data.cloudflare_zones.zue-dot-dev.zones.0.id

  type    = "CNAME"
  name    = "zue.dev"
  value   = "www-zue-dev.pages.dev"
  proxied = true

  allow_overwrite = true
}
