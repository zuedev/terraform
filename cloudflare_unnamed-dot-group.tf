resource "cloudflare_zone" "unnamed-dot-group" {
  zone = "unnamed.group"
  plan = "free"
}

resource "cloudflare_record" "unnamed-dot-group-domain-forward-a-1" {
  zone_id = cloudflare_zone.unnamed-dot-group.id
  name    = "@"
  value   = "216.239.32.21"
  type    = "A"
}

resource "cloudflare_record" "unnamed-dot-group-domain-forward-a-2" {
  zone_id = cloudflare_zone.unnamed-dot-group.id
  name    = "@"
  value   = "216.239.34.21"
  type    = "A"
}

resource "cloudflare_record" "unnamed-dot-group-domain-forward-a-3" {
  zone_id = cloudflare_zone.unnamed-dot-group.id
  name    = "@"
  value   = "216.239.36.21"
  type    = "A"
}

resource "cloudflare_record" "unnamed-dot-group-domain-forward-a-4" {
  zone_id = cloudflare_zone.unnamed-dot-group.id
  name    = "@"
  value   = "216.239.38.21"
  type    = "A"
}

resource "cloudflare_record" "unnamed-dot-group-domain-forward-aaaa-1" {
  zone_id = cloudflare_zone.unnamed-dot-group.id
  name    = "@"
  value   = "2001:4860:4802:32::15"
  type    = "AAAA"
}

resource "cloudflare_record" "unnamed-dot-group-domain-forward-aaaa-2" {
  zone_id = cloudflare_zone.unnamed-dot-group.id
  name    = "@"
  value   = "2001:4860:4802:34::15"
  type    = "AAAA"
}

resource "cloudflare_record" "unnamed-dot-group-domain-forward-aaaa-3" {
  zone_id = cloudflare_zone.unnamed-dot-group.id
  name    = "@"
  value   = "2001:4860:4802:36::15"
  type    = "AAAA"
}

resource "cloudflare_record" "unnamed-dot-group-domain-forward-aaaa-4" {
  zone_id = cloudflare_zone.unnamed-dot-group.id
  name    = "@"
  value   = "2001:4860:4802:38::15"
  type    = "AAAA"
}

resource "cloudflare_record" "unnamed-dot-group-domain-forward-cname" {
  zone_id = cloudflare_zone.unnamed-dot-group.id
  name    = "www"
  value   = "ghs.googlehosted.com"
  type    = "CNAME"
}

resource "cloudflare_record" "unnamed-dot-group-email-forward-mx-1" {
  zone_id  = cloudflare_zone.unnamed-dot-group.id
  name     = "@"
  priority = "0"
  value    = "gmr-smtp-in.l.google.com"
  type     = "MX"
}

resource "cloudflare_record" "unnamed-dot-group-email-forward-mx-2" {
  zone_id  = cloudflare_zone.unnamed-dot-group.id
  name     = "@"
  priority = "10"
  value    = "alt1.gmr-smtp-in.l.google.com"
  type     = "MX"
}

resource "cloudflare_record" "unnamed-dot-group-email-forward-mx-3" {
  zone_id  = cloudflare_zone.unnamed-dot-group.id
  name     = "@"
  priority = "20"
  value    = "alt2.gmr-smtp-in.l.google.com"
  type     = "MX"
}

resource "cloudflare_record" "unnamed-dot-group-email-forward-mx-4" {
  zone_id  = cloudflare_zone.unnamed-dot-group.id
  name     = "@"
  priority = "30"
  value    = "alt3.gmr-smtp-in.l.google.com"
  type     = "MX"
}

resource "cloudflare_record" "unnamed-dot-group-email-forward-mx-5" {
  zone_id  = cloudflare_zone.unnamed-dot-group.id
  name     = "@"
  priority = "40"
  value    = "alt4.gmr-smtp-in.l.google.com"
  type     = "MX"
}

resource "cloudflare_record" "unnamed-dot-group-block-sending-emails-1" {
  zone_id = cloudflare_zone.unnamed-dot-group.id
  name    = "@"
  value   = "v=spf1 -all"
  type    = "TXT"
}

resource "cloudflare_record" "unnamed-dot-group-block-sending-emails-2" {
  zone_id = cloudflare_zone.unnamed-dot-group.id
  name    = "*._domainkey"
  value   = "v=DKIM1; p="
  type    = "TXT"
}

resource "cloudflare_record" "unnamed-dot-group-block-sending-emails-3" {
  zone_id = cloudflare_zone.unnamed-dot-group.id
  name    = "_dmarc"
  value   = "v=DMARC1; p=reject; sp=reject; adkim=s; aspf=s; rua=mailto:zuedev@gmail.com"
  type    = "TXT"
}
