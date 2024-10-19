# DomainKeys Identified Mail (DKIM)

resource "cloudflare_record" "gitlab-zue-dot-dev_amazon-ses_dkim-cname-1" {
  zone_id = data.cloudflare_zones.zue-dot-dev.zones.0.id

  comment = "TF: gitlab amazon ses"

  type    = "CNAME"
  name    = "vlf574tofoowm5pso22sng2y7x6nds7u._domainkey.gitlab"
  value   = "vlf574tofoowm5pso22sng2y7x6nds7u.dkim.amazonses.com"
  proxied = false

  allow_overwrite = true
}

resource "cloudflare_record" "gitlab-zue-dot-dev_amazon-ses_dkim-cname-2" {
  zone_id = data.cloudflare_zones.zue-dot-dev.zones.0.id

  comment = "TF: gitlab amazon ses"

  type    = "CNAME"
  name    = "nuqrsf36knuzbtpbkawq75injexk66gp._domainkey.gitlab"
  value   = "nuqrsf36knuzbtpbkawq75injexk66gp.dkim.amazonses.com"
  proxied = false

  allow_overwrite = true
}

resource "cloudflare_record" "gitlab-zue-dot-dev_amazon-ses_dkim-cname-3" {
  zone_id = data.cloudflare_zones.zue-dot-dev.zones.0.id

  comment = "TF: gitlab amazon ses"

  type    = "CNAME"
  name    = "6qgizueeseamde54h4a4x67o6jhj3exd._domainkey.gitlab"
  value   = "6qgizueeseamde54h4a4x67o6jhj3exd.dkim.amazonses.com"
  proxied = false

  allow_overwrite = true
}

# Domain-based Message Authentication, Reporting, and Conformance (DMARC)

# REPLACED WITH CLOUDFLARE DMARC MANAGEMENT
# resource "cloudflare_record" "gitlab-zue-dot-dev_amazon-ses_dmarc" {
#   zone_id = data.cloudflare_zones.zue-dot-dev.zones.0.id

#   comment = "TF: gitlab amazon ses"

#   type  = "TXT"
#   name  = "_dmarc.gitlab"
#   value = "v=DMARC1; p=none;"

#   allow_overwrite = true
# }
