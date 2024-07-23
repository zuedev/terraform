resource "cloudflare_record" "uagpmc-dot-com_teamspeak_cname" {
  zone_id = data.cloudflare_zones.uagpmc-dot-com.zones.0.id

  comment = "TF: uag ts3 server"

  type    = "CNAME"
  name    = "teamspeak"
  value   = "baldur.zue.dev"
  proxied = false

  allow_overwrite = true
}
