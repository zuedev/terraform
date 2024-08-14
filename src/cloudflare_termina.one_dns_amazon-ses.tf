# DomainKeys Identified Mail (DKIM)

resource "cloudflare_record" "termina-dot-one_amazon-ses_dkim-cname-1" {
  zone_id = data.cloudflare_zones.termina-dot-one.zones.0.id

  comment = "TF: apex amazon ses"

  type    = "CNAME"
  name    = "b67bwg5vt4eywj7sfw4oldtpxznozkvg._domainkey"
  value   = "b67bwg5vt4eywj7sfw4oldtpxznozkvg.dkim.amazonses.com"
  proxied = false

  allow_overwrite = true
}

resource "cloudflare_record" "termina-dot-one_amazon-ses_dkim-cname-2" {
  zone_id = data.cloudflare_zones.termina-dot-one.zones.0.id

  comment = "TF: apex amazon ses"

  type    = "CNAME"
  name    = "uvjlu6egl3mmqod7q3qjhpff25u6ahdt._domainkey"
  value   = "uvjlu6egl3mmqod7q3qjhpff25u6ahdt.dkim.amazonses.com"
  proxied = false

  allow_overwrite = true
}

resource "cloudflare_record" "termina-dot-one_amazon-ses_dkim-cname-3" {
  zone_id = data.cloudflare_zones.termina-dot-one.zones.0.id

  comment = "TF: apex amazon ses"

  type    = "CNAME"
  name    = "gdbkdrffg24xwy7636c7jcrmhmu6rotn._domainkey"
  value   = "gdbkdrffg24xwy7636c7jcrmhmu6rotn.dkim.amazonses.com"
  proxied = false

  allow_overwrite = true
}

# Custom MAIL FROM domain

resource "cloudflare_record" "termina-dot-one_amazon-ses_custom-mail-from-mx" {
  zone_id = data.cloudflare_zones.termina-dot-one.zones.0.id

  comment = "TF: apex amazon ses"

  type     = "MX"
  name     = "aws-ses"
  value    = "feedback-smtp.eu-west-2.amazonses.com"
  priority = 10

  allow_overwrite = true
}

resource "cloudflare_record" "termina-dot-one_amazon-ses_custom-mail-from-spf" {
  zone_id = data.cloudflare_zones.termina-dot-one.zones.0.id

  comment = "TF: apex amazon ses"

  type  = "TXT"
  name  = "aws-ses"
  value = "v=spf1 include:amazonses.com -all"

  allow_overwrite = true
}

# Domain-based Message Authentication, Reporting, and Conformance (DMARC)

# REPLACED WITH CLOUDFLARE DMARC MANAGEMENT
# resource "cloudflare_record" "termina-dot-one_amazon-ses_dmarc" {
#   zone_id = data.cloudflare_zones.termina-dot-one.zones.0.id

#   comment = "TF: apex amazon ses"

#   type  = "TXT"
#   name  = "_dmarc"
#   value = "v=DMARC1; p=none;"

#   allow_overwrite = true
# }
