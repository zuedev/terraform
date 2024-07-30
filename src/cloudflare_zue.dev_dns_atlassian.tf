resource "cloudflare_record" "zue-dot-dev_atlassian" {
  zone_id = data.cloudflare_zones.zue-dot-dev.zones.0.id

  comment = "TF: atlassian verification"

  type  = "TXT"
  name  = "zue.dev"
  value = "atlassian-domain-verification=uneiyJ25jZ8WgTHSg6wskTeEE4ghqgJVpM8NwpaEM0J1LkPog/ftZKWaPrD5qszj"

  allow_overwrite = true
}
