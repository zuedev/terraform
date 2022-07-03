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
