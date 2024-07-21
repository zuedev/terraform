data "cloudflare_zones" "zue-dot-dev" {
  filter {
    name = "zue.dev"
  }
}
