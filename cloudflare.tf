provider "cloudflare" {
  email   = var.cloudflare_email
  api_key = var.cloudflare_api_key
}

resource "cloudflare_zone" "zue-dot-dev" {
  zone = "zue.dev"
  jump_start = true
  plan = "pro"
}

resource "cloudflare_zone_settings_override" "zue-dot-dev-settings" {
    zone_id = cloudflare_zone.zue-dot-dev.id
    settings {
      always_online = "on"
      always_use_https = "on"
      automatic_https_rewrites = "on"
      brotli = "on"
      browser_check = "on"
      development_mode = "off"
      early_hints = "on"
      email_obfuscation = "on"
      hotlink_protection = "off"
      http2 = "on"
      http3 = "on"
      
    }
}

resource "cloudflare_record" "domain-forward-a-1" {
  zone_id = cloudflare_zone.zue-dot-dev.id
  name    = "@"
  value   = "216.239.32.21"
  type    = "A"
}

resource "cloudflare_record" "domain-forward-a-2" {
  zone_id = cloudflare_zone.zue-dot-dev.id
  name    = "@"
  value   = "216.239.34.21"
  type    = "A"
}

resource "cloudflare_record" "domain-forward-a-3" {
  zone_id = cloudflare_zone.zue-dot-dev.id
  name    = "@"
  value   = "216.239.36.21"
  type    = "A"
}

resource "cloudflare_record" "domain-forward-a-4" {
  zone_id = cloudflare_zone.zue-dot-dev.id
  name    = "@"
  value   = "216.239.38.21"
  type    = "A"
}

resource "cloudflare_record" "domain-forward-aaaa-1" {
  zone_id = cloudflare_zone.zue-dot-dev.id
  name    = "@"
  value   = "2001:4860:4802:32::15"
  type    = "AAAA"
}

resource "cloudflare_record" "domain-forward-aaaa-2" {
  zone_id = cloudflare_zone.zue-dot-dev.id
  name    = "@"
  value   = "2001:4860:4802:34::15"
  type    = "AAAA"
}

resource "cloudflare_record" "domain-forward-aaaa-3" {
  zone_id = cloudflare_zone.zue-dot-dev.id
  name    = "@"
  value   = "2001:4860:4802:36::15"
  type    = "AAAA"
}

resource "cloudflare_record" "domain-forward-aaaa-4" {
  zone_id = cloudflare_zone.zue-dot-dev.id
  name    = "@"
  value   = "2001:4860:4802:38::15"
  type    = "AAAA"
}

resource "cloudflare_record" "domain-forward-cname" {
  zone_id = cloudflare_zone.zue-dot-dev.id
  name    = "www"
  value   = "ghs.googlehosted.com"
  type    = "CNAME"
}

resource "cloudflare_record" "email-forward-mx-1" {
  zone_id = cloudflare_zone.zue-dot-dev.id
  name    = "@"
  priority = "0"
  value   = "gmr-smtp-in.l.google.com"
  type    = "MX"
}

resource "cloudflare_record" "email-forward-mx-2" {
  zone_id = cloudflare_zone.zue-dot-dev.id
  name    = "@"
  priority = "10"
  value   = "alt1.gmr-smtp-in.l.google.com"
  type    = "MX"
}

resource "cloudflare_record" "email-forward-mx-3" {
  zone_id = cloudflare_zone.zue-dot-dev.id
  name    = "@"
  priority = "20"
  value   = "alt2.gmr-smtp-in.l.google.com"
  type    = "MX"
}

resource "cloudflare_record" "email-forward-mx-4" {
  zone_id = cloudflare_zone.zue-dot-dev.id
  name    = "@"
  priority = "30"
  value   = "alt3.gmr-smtp-in.l.google.com"
  type    = "MX"
}

resource "cloudflare_record" "email-forward-mx-5" {
  zone_id = cloudflare_zone.zue-dot-dev.id
  name    = "@"
  priority = "40"
  value   = "alt4.gmr-smtp-in.l.google.com"
  type    = "MX"
}