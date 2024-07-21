# AT protocol
resource "cloudflare_record" "area96-dot-digital_bsky" {
  zone_id = data.cloudflare_zones.area96-dot-digital.zones.0.id

  comment = "TF: bsky verification"

  type  = "TXT"
  name  = "_atproto"
  value = "did=did:plc:4qprvpjnm2cjulqvttp5bu5d"

  allow_overwrite = true
}
