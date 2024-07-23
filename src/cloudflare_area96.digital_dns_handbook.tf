resource "cloudflare_record" "area96-dot-digital_handbook_cname" {
  zone_id = data.cloudflare_zones.area96-dot-digital.zones.0.id

  comment = "TF: handbook cf pages"

  type    = "CNAME"
  name    = "handbook"
  value   = "handbook-area96-digital.pages.dev"
  proxied = true

  allow_overwrite = true
}
