terraform {
  required_version = ">= 0.12.3"
}

provider "digitalocean" {
    version = "~> 1.4.0"
}

module "jumpbox" {
  source = "git::git@github.com:meshplayground/infra-modules.git//jumpbox?ref=0.0.1"

  region = "nyc3"
  image = "ubuntu-18-04-x64"
  size = "s-1vcpu-1gb"
  ssh_keys = ["22132212"]
}
