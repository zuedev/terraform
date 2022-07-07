resource "cloudflare_zone" "bluebean-dot-games" {
  zone = "bluebean.games"
  plan = "free"
}

resource "cloudflare_zone_settings_override" "bluebean-dot-games-settings" {
  zone_id = cloudflare_zone.bluebean-dot-games.id
  settings {
    always_online            = "on"
    always_use_https         = "on"
    automatic_https_rewrites = "on"
    brotli                   = "on"
    email_obfuscation        = "off"
    h2_prioritization        = "on"
    hotlink_protection       = "off"
    http3                    = "on"
    min_tls_version          = "1.3"
    minify {
      css  = "on"
      js   = "on"
      html = "on"
    }
    opportunistic_encryption = "on"
    opportunistic_onion      = "on"
    security_header {
      enabled            = true
      preload            = true
      include_subdomains = true
      nosniff            = true
    }
    security_level = "high"
    ssl            = "strict"
    tls_1_3        = "zrt"
    websockets     = "on"
    zero_rtt       = "on"
  }
}
