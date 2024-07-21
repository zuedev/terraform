# AT protocol
resource "cloudflare_record" "zue-dot-dev_openai" {
  zone_id = data.cloudflare_zones.zue-dot-dev.zones.0.id

  comment = "TF: openai verification"

  type  = "TXT"
  name  = "zue.dev"
  value = "openai-domain-verification=dv-DGZaQGLeJGHXRkUmpeX8XlUw"

  allow_overwrite = true
}
