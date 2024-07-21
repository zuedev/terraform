# AT protocol
resource "cloudflare_record" "zue-dot-dev_bsky" {
  zone_id = data.cloudflare_zones.zue-dot-dev.zones.0.id

  comment = "TF: bsky verification"

  type  = "TXT"
  name  = "_atproto"
  value = "did=did:plc:k7ll57qjijot76t6m57w74bz"

  allow_overwrite = true
}
