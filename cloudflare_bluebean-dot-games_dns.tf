resource "cloudflare_record" "bluebean-dot-games-domain-forward-a-1" {
  zone_id = cloudflare_zone.bluebean-dot-games.id
  name    = "@"
  value   = "216.239.32.21"
  type    = "A"
}

resource "cloudflare_record" "bluebean-dot-games-domain-forward-a-2" {
  zone_id = cloudflare_zone.bluebean-dot-games.id
  name    = "@"
  value   = "216.239.34.21"
  type    = "A"
}

resource "cloudflare_record" "bluebean-dot-games-domain-forward-a-3" {
  zone_id = cloudflare_zone.bluebean-dot-games.id
  name    = "@"
  value   = "216.239.36.21"
  type    = "A"
}

resource "cloudflare_record" "bluebean-dot-games-domain-forward-a-4" {
  zone_id = cloudflare_zone.bluebean-dot-games.id
  name    = "@"
  value   = "216.239.38.21"
  type    = "A"
}

resource "cloudflare_record" "bluebean-dot-games-domain-forward-aaaa-1" {
  zone_id = cloudflare_zone.bluebean-dot-games.id
  name    = "@"
  value   = "2001:4860:4802:32::15"
  type    = "AAAA"
}

resource "cloudflare_record" "bluebean-dot-games-domain-forward-aaaa-2" {
  zone_id = cloudflare_zone.bluebean-dot-games.id
  name    = "@"
  value   = "2001:4860:4802:34::15"
  type    = "AAAA"
}

resource "cloudflare_record" "bluebean-dot-games-domain-forward-aaaa-3" {
  zone_id = cloudflare_zone.bluebean-dot-games.id
  name    = "@"
  value   = "2001:4860:4802:36::15"
  type    = "AAAA"
}

resource "cloudflare_record" "bluebean-dot-games-domain-forward-aaaa-4" {
  zone_id = cloudflare_zone.bluebean-dot-games.id
  name    = "@"
  value   = "2001:4860:4802:38::15"
  type    = "AAAA"
}

resource "cloudflare_record" "bluebean-dot-games-domain-forward-cname" {
  zone_id = cloudflare_zone.bluebean-dot-games.id
  name    = "www"
  value   = "ghs.googlehosted.com"
  type    = "CNAME"
}

resource "cloudflare_record" "bluebean-dot-games-email-forward-mx-1" {
  zone_id  = cloudflare_zone.bluebean-dot-games.id
  name     = "@"
  priority = "0"
  value    = "gmr-smtp-in.l.google.com"
  type     = "MX"
}

resource "cloudflare_record" "bluebean-dot-games-email-forward-mx-2" {
  zone_id  = cloudflare_zone.bluebean-dot-games.id
  name     = "@"
  priority = "10"
  value    = "alt1.gmr-smtp-in.l.google.com"
  type     = "MX"
}

resource "cloudflare_record" "bluebean-dot-games-email-forward-mx-3" {
  zone_id  = cloudflare_zone.bluebean-dot-games.id
  name     = "@"
  priority = "20"
  value    = "alt2.gmr-smtp-in.l.google.com"
  type     = "MX"
}

resource "cloudflare_record" "bluebean-dot-games-email-forward-mx-4" {
  zone_id  = cloudflare_zone.bluebean-dot-games.id
  name     = "@"
  priority = "30"
  value    = "alt3.gmr-smtp-in.l.google.com"
  type     = "MX"
}

resource "cloudflare_record" "bluebean-dot-games-email-forward-mx-5" {
  zone_id  = cloudflare_zone.bluebean-dot-games.id
  name     = "@"
  priority = "40"
  value    = "alt4.gmr-smtp-in.l.google.com"
  type     = "MX"
}

resource "cloudflare_record" "bluebean-dot-games-block-sending-emails-1" {
  zone_id = cloudflare_zone.bluebean-dot-games.id
  name    = "@"
  value   = "v=spf1 -all"
  type    = "TXT"
}

resource "cloudflare_record" "bluebean-dot-games-block-sending-emails-2" {
  zone_id = cloudflare_zone.bluebean-dot-games.id
  name    = "*._domainkey"
  value   = "v=DKIM1; p="
  type    = "TXT"
}

resource "cloudflare_record" "bluebean-dot-games-block-sending-emails-3" {
  zone_id = cloudflare_zone.bluebean-dot-games.id
  name    = "_dmarc"
  value   = "v=DMARC1; p=reject; sp=reject; adkim=s; aspf=s; rua=mailto:zuedev@gmail.com"
  type    = "TXT"
}
