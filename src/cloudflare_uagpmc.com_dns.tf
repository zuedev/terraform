resource "cloudflare_record" "uagpmc-dot-com_root_cname" {
  zone_id = data.cloudflare_zones.uagpmc-dot-com.zones.0.id

  comment = "TF: Apex domain to gh pages"

  type    = "CNAME"
  name    = "uagpmc.com"
  value   = "unnamedarmagrouphub.github.io"
  proxied = false

  allow_overwrite = true
}

resource "cloudflare_record" "uagpmc-dot-com_www_cname" {
  zone_id = data.cloudflare_zones.uagpmc-dot-com.zones.0.id

  comment = "TF: www subdomain to apex domain"

  type    = "CNAME"
  name    = "www"
  value   = "uagpmc.com"
  proxied = true

  allow_overwrite = true
}
