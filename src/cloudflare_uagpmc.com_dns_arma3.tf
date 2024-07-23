resource "cloudflare_record" "uagpmc-dot-com_arma3_cname" {
  zone_id = data.cloudflare_zones.uagpmc-dot-com.zones.0.id

  comment = "TF: uag arma3 server"

  type    = "CNAME"
  name    = "arma3"
  value   = "sovereign.zue.dev"
  proxied = false

  allow_overwrite = true
}
