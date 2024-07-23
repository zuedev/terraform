resource "cloudflare_record" "pixel-dot-build_root_a" {
  zone_id = data.cloudflare_zones.pixel-dot-build.zones.0.id

  comment = "TF: Apex domain to Vercel"

  type    = "A"
  name    = "pixel.build"
  value   = "76.76.21.21"
  proxied = false

  allow_overwrite = true
}

resource "cloudflare_record" "pixel-dot-build_www_cname" {
  zone_id = data.cloudflare_zones.pixel-dot-build.zones.0.id

  comment = "TF: www subdomain to apex domain"

  type    = "CNAME"
  name    = "www"
  value   = "cname.vercel-dns.com"
  proxied = false

  allow_overwrite = true
}
