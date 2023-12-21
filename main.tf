terraform {

    required_version = ">= 0.13.0"

    required_providers {
        proxmox = {
            source = "thegameprofi/proxmox"
            version = "2.9.15"
        }
    }
}


provider "proxmox" {

    pm_api_url = "https://192.168.1.27:8006/api2/json"
    pm_user = "root@pam"
    pm_password = "G00dw1nd"

    # (Optional) Skip TLS Verification
    pm_tls_insecure = true
    pm_parallel = 1  #do not increase this, it locks the state.file

    pm_log_enable = true
    pm_log_file   = "terraform-plugin-proxmox.log"
    pm_debug      = true
    pm_log_levels = {
      _default    = "debug"
      _capturelog = ""
    }
}

# You can change this values for proxmox-module
#module "<module_name>" {
#    source = "./proxmox-module"
#
#    # Input Variable
#    vm_name = ""           #Required
#    template_name = ""     #debian
#    cpu_cores = ""         #1
#    memory_size = ""       #1024
#}


module "snipe1" {
    source = "./proxmox-module"

    # Input Variable
    vm_name = "snipe1"
    cpu_cores = "2"

}

