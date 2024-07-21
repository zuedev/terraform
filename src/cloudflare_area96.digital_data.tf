data "cloudflare_zones" "area96-dot-digital" {
  filter {
    name = "area96.digital"
  }
}
