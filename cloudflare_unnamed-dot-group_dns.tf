resource "cloudflare_record" "unnamed-dot-group-domain-root-gitlab-pages-cname" {
  zone_id = cloudflare_zone.unnamed-dot-group.id
  name    = "@"
  value   = "unnamed-dot-group.gitlab.io"
  type    = "CNAME"
}

resource "cloudflare_record" "unnamed-dot-group-root-gitlab-pages-txt" {
  zone_id = cloudflare_zone.unnamed-dot-group.id
  name    = "_gitlab-pages-verification-code"
  value   = "gitlab-pages-verification-code=19a57eacded904159a1f7980f5998a2f"
  type    = "TXT"
}

resource "cloudflare_record" "unnamed-dot-group-domain-www-gitlab-pages-cname" {
  zone_id = cloudflare_zone.unnamed-dot-group.id
  name    = "www"
  value   = "@"
  type    = "CNAME"
  proxied = true
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
