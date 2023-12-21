resource "proxmox_vm_qemu" "proxmox" {
    
    # VM General Settings
    target_node = var.node_name
    name = var.vm_name

    # VM Advanced General Settings
    onboot = true 
    qemu_os = "l26"

    # VM OS Settings
    clone = var.template_name

    full_clone = true

    # VM System Settings
    agent = 1
    
    # VM CPU Settings
    cores = var.cpu_cores
    sockets = 1
    cpu = "host"    
    
    # VM Memory Settings
    memory = var.memory_size

    # VM Network Settings
    network {
        bridge = "vmbr0"
        model  = "virtio"
    }


    # VM Cloud-Init Settings
    os_type = "cloud-init"

    # (Optional) IP Address and Gateway
    ipconfig0 = "gw=192.168.1.1,ip=192.168.1.80/24"
    
    # (Optional) Default User
    ciuser = var.ci_user
    cipassword = var.ci_password
    
#    # (Optional) Add your SSH KEY
    sshkeys = var.ci_ssh_key


#    connection {
#       type = "ssh"
#       host = "192.168.1.80"
#       user = var.ci_user
#       private_key = file(var.private_key_path)
#       agent = true
#       timeout = "3m"
#     }
#
#    provisioner "remote-exec" {
#      inline = [ "echo 'Cool, we are ready for provisioning'"]
#    }


    provisioner "local-exec" {
      command = "ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook --key-file /home/denmark/.ssh/id_ecdsa -i 192.168.1.80, provision.yml --become-password-file=password"
    }

}
