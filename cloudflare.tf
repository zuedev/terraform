provider "cloudflare" {
  email   = var.cloudflare_email
  api_key = var.cloudflare_api_key
}

resource "cloudflare_zone" "zue-dot-dev" {
  zone       = "zue.dev"
  jump_start = true
  plan       = "pro"
}

resource "cloudflare_zone_settings_override" "zue-dot-dev-settings" {
  zone_id = cloudflare_zone.zue-dot-dev.id
  settings {
    always_online            = "on"
    always_use_https         = "on"
    automatic_https_rewrites = "on"
    brotli                   = "on"
    cname_flattening         = "flatten_all"
    email_obfuscation        = "off"
    h2_prioritization        = "on"
    hotlink_protection       = "off"
    http2                    = "on"
    http3                    = "on"
    image_resizing           = "open"
    min_tls_version          = "1.3"
    minify {
      css  = "on"
      js   = "on"
      html = "on"
    }
    mirage                   = "on"
    opportunistic_encryption = "on"
    opportunistic_onion      = "on"
    polish                   = "lossless"
    security_header {
      enabled            = true
      preload            = true
      include_subdomains = true
      nosniff            = true
    }
    security_level = "high"
    ssl            = "strict"
    tls_1_3        = "zrt"
    webp           = "on"
    websockets     = "on"
    zero_rtt       = "on"
  }
}

resource "cloudflare_argo" "zue-dot-dev-argo" {
  zone_id        = cloudflare_zone.zue-dot-dev.id
  tiered_caching = "on"
  smart_routing  = "on"
}

resource "cloudflare_record" "zue-dot-dev-root-github-pages" {
  zone_id = cloudflare_zone.zue-dot-dev.id
  name    = "@"
  value   = "zuedev.github.io"
  type    = "CNAME"
}

resource "cloudflare_page_rule" "zue-dot-dev-www-redirect" {
  zone_id = cloudflare_zone.zue-dot-dev.id
  target  = "*${cloudflare_zone.zue-dot-dev.zone}*"
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
