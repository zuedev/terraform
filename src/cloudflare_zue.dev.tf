data "cloudflare_zones" "zue-dot-dev" {
  filter {
    name = "zue.dev"
  }
}

resource "cloudflare_record" "zue-dot-dev_caprover_a" {
  zone_id = data.cloudflare_zones.zue-dot-dev.zones.0.id

  comment = "TF-${formatdate("YYMMDDhhmmss", timestamp())}"

  type    = "A"
  name    = "caprover.zue.dev"
  value   = "195.201.101.2"
  proxied = false

  allow_overwrite = true
}
