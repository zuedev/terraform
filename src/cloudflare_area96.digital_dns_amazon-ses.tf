# DomainKeys Identified Mail (DKIM)

resource "cloudflare_record" "area96-dot-digital_amazon-ses_dkim-cname-1" {
  zone_id = data.cloudflare_zones.area96-dot-digital.zones.0.id

  comment = "TF: apex amazon ses"

  type    = "CNAME"
  name    = "7qentlskdhegc3frycefqvkr2uzh7tpa._domainkey"
  value   = "7qentlskdhegc3frycefqvkr2uzh7tpa.dkim.amazonses.com"
  proxied = false

  allow_overwrite = true
}

resource "cloudflare_record" "area96-dot-digital_amazon-ses_dkim-cname-2" {
  zone_id = data.cloudflare_zones.area96-dot-digital.zones.0.id

  comment = "TF: apex amazon ses"

  type    = "CNAME"
  name    = "lsfiuv2cf4cvrfa7fwdxbstrxw4k7gpk._domainkey"
  value   = "lsfiuv2cf4cvrfa7fwdxbstrxw4k7gpk.dkim.amazonses.com"
  proxied = false

  allow_overwrite = true
}

resource "cloudflare_record" "area96-dot-digital_amazon-ses_dkim-cname-3" {
  zone_id = data.cloudflare_zones.area96-dot-digital.zones.0.id

  comment = "TF: apex amazon ses"

  type    = "CNAME"
  name    = "lcjizspw4azv363zdexyr2xny7dpgruq._domainkey"
  value   = "lcjizspw4azv363zdexyr2xny7dpgruq.dkim.amazonses.com"
  proxied = false

  allow_overwrite = true
}

# Custom MAIL FROM domain

resource "cloudflare_record" "area96-dot-digital_amazon-ses_custom-mail-from-mx" {
  zone_id = data.cloudflare_zones.area96-dot-digital.zones.0.id

  comment = "TF: apex amazon ses"

  type     = "MX"
  name     = "aws-ses"
  value    = "feedback-smtp.eu-west-2.amazonses.com"
  priority = 10

  allow_overwrite = true
}

resource "cloudflare_record" "area96-dot-digital_amazon-ses_custom-mail-from-spf" {
  zone_id = data.cloudflare_zones.area96-dot-digital.zones.0.id

  comment = "TF: apex amazon ses"

  type  = "TXT"
  name  = "aws-ses"
  value = "v=spf1 include:amazonses.com -all"

  allow_overwrite = true
}

# Domain-based Message Authentication, Reporting, and Conformance (DMARC)

# REPLACED WITH CLOUDFLARE DMARC MANAGEMENT
# resource "cloudflare_record" "area96-dot-digital_amazon-ses_dmarc" {
#   zone_id = data.cloudflare_zones.area96-dot-digital.zones.0.id

#   comment = "TF: apex amazon ses"

#   type  = "TXT"
#   name  = "_dmarc"
#   value = "v=DMARC1; p=none;"

#   allow_overwrite = true
# }
