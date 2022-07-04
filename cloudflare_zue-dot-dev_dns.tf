resource "cloudflare_record" "zue-dot-dev-root-github-pages" {
  zone_id = cloudflare_zone.zue-dot-dev.id
  name    = "@"
  value   = "zuedev.github.io"
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "zue-dot-dev-www-redirect" {
  zone_id = cloudflare_zone.zue-dot-dev.id
  name    = "www"
  value   = "@"
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "zue-dot-dev-email-forward-mx-1" {
  zone_id  = cloudflare_zone.zue-dot-dev.id
  name     = "@"
  priority = "0"
  value    = "gmr-smtp-in.l.google.com"
  type     = "MX"
}

resource "cloudflare_record" "zue-dot-dev-email-forward-mx-2" {
  zone_id  = cloudflare_zone.zue-dot-dev.id
  name     = "@"
  priority = "10"
  value    = "alt1.gmr-smtp-in.l.google.com"
  type     = "MX"
}

resource "cloudflare_record" "zue-dot-dev-email-forward-mx-3" {
  zone_id  = cloudflare_zone.zue-dot-dev.id
  name     = "@"
  priority = "20"
  value    = "alt2.gmr-smtp-in.l.google.com"
  type     = "MX"
}

resource "cloudflare_record" "zue-dot-dev-email-forward-mx-4" {
  zone_id  = cloudflare_zone.zue-dot-dev.id
  name     = "@"
  priority = "30"
  value    = "alt3.gmr-smtp-in.l.google.com"
  type     = "MX"
}

resource "cloudflare_record" "zue-dot-dev-email-forward-mx-5" {
  zone_id  = cloudflare_zone.zue-dot-dev.id
  name     = "@"
  priority = "40"
  value    = "alt4.gmr-smtp-in.l.google.com"
  type     = "MX"
}

resource "cloudflare_record" "zue-dot-dev-block-sending-emails-1" {
  zone_id = cloudflare_zone.zue-dot-dev.id
  name    = "@"
  value   = "v=spf1 -all"
  type    = "TXT"
}

resource "cloudflare_record" "zue-dot-dev-block-sending-emails-2" {
  zone_id = cloudflare_zone.zue-dot-dev.id
  name    = "*._domainkey"
  value   = "v=DKIM1; p="
  type    = "TXT"
}

resource "cloudflare_record" "zue-dot-dev-block-sending-emails-3" {
  zone_id = cloudflare_zone.zue-dot-dev.id
  name    = "_dmarc"
  value   = "v=DMARC1; p=reject; sp=reject; adkim=s; aspf=s; rua=mailto:zuedev@gmail.com"
  type    = "TXT"
}
