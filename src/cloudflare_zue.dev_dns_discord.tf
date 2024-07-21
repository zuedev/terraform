# AT protocol
resource "cloudflare_record" "zue-dot-dev_discord" {
  zone_id = data.cloudflare_zones.zue-dot-dev.zones.0.id

  comment = "TF: discord verification"

  type  = "TXT"
  name  = "_discord"
  value = "dh=6ec7b2b96336f5cc467394ccc05dbe1a65cfe4e4"

  allow_overwrite = true
}
