# cloudflare dmarc reporting
resource "cloudflare_record" "area96-dot-digital_cf-dmarc-reporting" {
  zone_id = data.cloudflare_zones.area96-dot-digital.zones.0.id

  comment = "TF: cf dmarc reporting"

  type  = "TXT"
  name  = "_dmarc"
  value = "v=DMARC1; p=reject; rua=mailto:374ae5b8066d4eb9803d6ce53ad87ae8@dmarc-reports.cloudflare.net"

  allow_overwrite = true
}
