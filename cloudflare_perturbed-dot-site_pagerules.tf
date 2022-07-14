resource "cloudflare_page_rule" "perturbed-dot-site-www-redirect" {
  zone_id = cloudflare_zone.perturbed-dot-site.id
  target  = "www.${cloudflare_zone.perturbed-dot-site.zone}/*"

  actions {
    forwarding_url {
      url         = "https://perturbed.site/$1"
      status_code = "301"
    }
  }
}
