resource "cloudflare_page_rule" "zue-dot-dev-www-redirect" {
  zone_id = cloudflare_zone.zue-dot-dev.id
  target  = "www.${cloudflare_zone.zue-dot-dev.zone}/*"

  actions {
    forwarding_url {
      url         = "https://zue.dev/$1"
      status_code = "301"
    }
  }
}
