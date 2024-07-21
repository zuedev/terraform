resource "cloudflare_record" "zue-dot-dev_worlds_cname" {
  zone_id = data.cloudflare_zones.zue-dot-dev.zones.0.id

  comment = "TF: worlds site on cf pages"

  type    = "CNAME"
  name    = "worlds"
  value   = "worlds-zue-dev.pages.dev"
  proxied = true

  allow_overwrite = true
}
