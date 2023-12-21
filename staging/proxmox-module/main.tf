# Proxmox Provider
# ---
# Initial Provider Configuration for Proxmox

terraform {

    required_version = ">= 0.13.0"

    required_providers {
        proxmox = {
            source = "thegameprofi/proxmox"
            version = "2.9.15"
        }
    }
}
