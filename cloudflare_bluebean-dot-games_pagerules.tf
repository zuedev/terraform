resource "cloudflare_page_rule" "bluebean-dot-games-www-redirect" {
  zone_id = cloudflare_zone.bluebean-dot-games.id
  target  = "www.${cloudflare_zone.bluebean-dot-games.zone}/*"

  actions {
    forwarding_url {
      url         = "https://bluebean.games/$1"
      status_code = "301"
    }
  }
}
