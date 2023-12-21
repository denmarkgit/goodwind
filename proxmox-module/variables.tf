variable "ci_user" {
    type = string
    default = "denmark"
}

variable "ci_password" {
    type = string
    default = "@denang123"
}

variable "ci_ssh_key" {
    type = string
    default = "ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBJeBls4cIOv07eVrjS6xtNWVArTObZR9z0nLSJHS9ix7IP4EIpJ30SF95QDp23gEU4xIHhGQw/MEJrfeSwpuME8= denmark@LT-DenmarkAngeles"
}

variable "node_name" {
    type = string
    default = "gdcpve1"
}

variable "vm_name" {
    type = string
    default = "gdcpve1"
}

variable "template_name" {
    type = string
    default = "debian-11-cloudinit-template"
}

variable "cpu_cores" {
    type = string
    default = "1"
}

variable "memory_size" {
    type = string
    default = "1024"
}

variable "private_key_path" {
  type = string
  default = "/home/denmark/.ssh/id_ecdsa"
}
