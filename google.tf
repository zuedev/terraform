provider "google" {
  project     = "zuedev2022"
  region      = "europe-west2"
  zone        = "europe-west2-a"
  credentials = var.google_credentials
}
