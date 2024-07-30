resource "cloudflare_record" "uagpmc-dot-com_docs_cname" {
  zone_id = data.cloudflare_zones.uagpmc-dot-com.zones.0.id

  comment = "TF: docs cf pages"

  type    = "CNAME"
  name    = "docs"
  value   = "docs-uagpmc-com.pages.dev"
  proxied = true

  allow_overwrite = true
}
