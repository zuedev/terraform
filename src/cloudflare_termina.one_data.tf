data "cloudflare_zones" "termina-dot-one" {
  filter {
    name = "termina.one"
  }
}
