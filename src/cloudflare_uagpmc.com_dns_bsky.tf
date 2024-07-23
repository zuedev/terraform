# AT protocol
resource "cloudflare_record" "uagpmc-dot-com_bsky" {
  zone_id = data.cloudflare_zones.uagpmc-dot-com.zones.0.id

  comment = "TF: bsky verification"

  type  = "TXT"
  name  = "_atproto"
  value = "did=did:plc:w5scrdejehg55qkdpj7p3f3r"

  allow_overwrite = true
}
