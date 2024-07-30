resource "cloudflare_record" "termina-dot-one_atlassian" {
  zone_id = data.cloudflare_zones.termina-dot-one.zones.0.id

  comment = "TF: atlassian verification"

  type  = "TXT"
  name  = "termina.one"
  value = "atlassian-domain-verification=uneiyJ25jZ8WgTHSg6wskTeEE4ghqgJVpM8NwpaEM0J1LkPog/ftZKWaPrD5qszj"

  allow_overwrite = true
}
