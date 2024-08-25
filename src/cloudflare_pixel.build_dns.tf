resource "cloudflare_record" "pixel-dot-build_root_cname" {
  zone_id = data.cloudflare_zones.pixel-dot-build.zones.0.id

  comment = "TF: Apex domain to Vercel"

  type    = "CNAME"
  name    = "pixel.build"
  value   = "www-pixel-build.pages.dev"
  proxied = false

  allow_overwrite = true
}

resource "cloudflare_record" "pixel-dot-build_www_cname" {
  zone_id = data.cloudflare_zones.pixel-dot-build.zones.0.id

  comment = "TF: www subdomain to apex domain"

  type    = "CNAME"
  name    = "www"
  value   = "www-pixel-build.pages.dev"
  proxied = false

  allow_overwrite = true
}
