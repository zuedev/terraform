data "cloudflare_zones" "uagpmc-dot-com" {
  filter {
    name = "uagpmc.com"
  }
}
