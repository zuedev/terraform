# DomainKeys Identified Mail (DKIM)

resource "cloudflare_record" "zue-dot-dev_amazon-ses_dkim-cname-1" {
  zone_id = data.cloudflare_zones.zue-dot-dev.zones.0.id

  comment = "TF: apex amazon ses"

  type    = "CNAME"
  name    = "2eytzuztn325iolhi3twrxi3jykyb5jg._domainkey"
  value   = "2eytzuztn325iolhi3twrxi3jykyb5jg.dkim.amazonses.com"
  proxied = false

  allow_overwrite = true
}

resource "cloudflare_record" "zue-dot-dev_amazon-ses_dkim-cname-2" {
  zone_id = data.cloudflare_zones.zue-dot-dev.zones.0.id

  comment = "TF: apex amazon ses"

  type    = "CNAME"
  name    = "iltwjfurohirkesaa5dtamzufre4bh77._domainkey"
  value   = "iltwjfurohirkesaa5dtamzufre4bh77.dkim.amazonses.com"
  proxied = false

  allow_overwrite = true
}

resource "cloudflare_record" "zue-dot-dev_amazon-ses_dkim-cname-3" {
  zone_id = data.cloudflare_zones.zue-dot-dev.zones.0.id

  comment = "TF: apex amazon ses"

  type    = "CNAME"
  name    = "pzvvblxyoxhg24ydtkqiotnltrhfroqu._domainkey"
  value   = "pzvvblxyoxhg24ydtkqiotnltrhfroqu.dkim.amazonses.com"
  proxied = false

  allow_overwrite = true
}

# Custom MAIL FROM domain

resource "cloudflare_record" "zue-dot-dev_amazon-ses_custom-mail-from-mx" {
  zone_id = data.cloudflare_zones.zue-dot-dev.zones.0.id

  comment = "TF: apex amazon ses"

  type     = "MX"
  name     = "aws-ses"
  value    = "feedback-smtp.eu-west-2.amazonses.com"
  priority = 10

  allow_overwrite = true
}

resource "cloudflare_record" "zue-dot-dev_amazon-ses_custom-mail-from-spf" {
  zone_id = data.cloudflare_zones.zue-dot-dev.zones.0.id

  comment = "TF: apex amazon ses"

  type  = "TXT"
  name  = "aws-ses"
  value = "v=spf1 include:amazonses.com -all"

  allow_overwrite = true
}

# Domain-based Message Authentication, Reporting, and Conformance (DMARC)

resource "cloudflare_record" "zue-dot-dev_amazon-ses_dmarc" {
  zone_id = data.cloudflare_zones.zue-dot-dev.zones.0.id

  comment = "TF: apex amazon ses"

  type  = "TXT"
  name  = "_dmarc"
  value = "v=DMARC1; p=none;"

  allow_overwrite = true
}
