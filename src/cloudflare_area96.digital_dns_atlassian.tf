resource "cloudflare_record" "area96-dot-digital_atlassian" {
  zone_id = data.cloudflare_zones.area96-dot-digital.zones.0.id

  comment = "TF: atlassian verification"

  type  = "TXT"
  name  = "area96.digital"
  value = "atlassian-domain-verification=uneiyJ25jZ8WgTHSg6wskTeEE4ghqgJVpM8NwpaEM0J1LkPog/ftZKWaPrD5qszj"

  allow_overwrite = true
}
