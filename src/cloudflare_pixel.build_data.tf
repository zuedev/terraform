data "cloudflare_zones" "pixel-dot-build" {
  filter {
    name = "pixel.build"
  }
}
