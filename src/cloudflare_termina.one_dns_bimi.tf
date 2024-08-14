resource "cloudflare_record" "termina-dot-one_root_bimi_txt" {
  zone_id = data.cloudflare_zones.termina-dot-one.zones.0.id

  comment = "TF: BIMI TXT record for root"

  type  = "TXT"
  name  = "termina.one"
  value = "v=BIMI1;l=https://termina.one/t1_logo_tight.svg"

  allow_overwrite = true
}
