resource "cloudflare_record" "pixel-dot-build_atlassian" {
  zone_id = data.cloudflare_zones.pixel-dot-build.zones.0.id

  comment = "TF: atlassian verification"

  type  = "TXT"
  name  = "pixel.build"
  value = "atlassian-domain-verification=uneiyJ25jZ8WgTHSg6wskTeEE4ghqgJVpM8NwpaEM0J1LkPog/ftZKWaPrD5qszj"

  allow_overwrite = true
}
