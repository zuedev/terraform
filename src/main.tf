terraform {
  cloud {
    organization = "zuedev"

    workspaces {
      name = "github-com_zuedev_terraform"
    }
  }
}
