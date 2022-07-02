provider "google" {
  credentials = var.google_credentials
}

resource "google_compute_address" "test321" {
  project = "zuedev2022"
  name    = "test321"
}

resource "google_compute_instance" "test321" {
  project      = "zuedev2022"
  name         = "test321"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"

    access_config {
      nat_ip = google_compute_address.test321.address
    }
  }
}
