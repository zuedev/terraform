# cloudflare dmarc reporting
resource "cloudflare_record" "zue-dot-dev_amazon-ses_dmarc" {
  zone_id = data.cloudflare_zones.zue-dot-dev.zones.0.id

  comment = "TF: cf dmarc reporting"

  type  = "TXT"
  name  = "_dmarc"
  value = "v=DMARC1; p=reject; rua=mailto:6225201473c54e6f8934e013cb490275@dmarc-reports.cloudflare.net"

  allow_overwrite = true
}
