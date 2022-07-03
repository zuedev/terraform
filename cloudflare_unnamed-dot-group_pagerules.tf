resource "cloudflare_page_rule" "unnamed-dot-group-discord-redirect" {
  zone_id = cloudflare_zone.unnamed-dot-group.id
  target  = "*${cloudflare_zone.unnamed-dot-group.zone}/discord"

  actions {
    forwarding_url {
      url         = "https://discord.com/invite/JnDGdHp9JV"
      status_code = "301"
    }
  }
}

resource "cloudflare_page_rule" "unnamed-dot-group-www-redirect" {
  zone_id = cloudflare_zone.unnamed-dot-group.id
  target  = "www.${cloudflare_zone.unnamed-dot-group.zone}/*"

  actions {
    forwarding_url {
      url         = "https://unnamed.group/$1"
      status_code = "301"
    }
  }
}
