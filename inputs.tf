module "ubuntu_vm" {
  source = "./modules/vm"
  
  providers = {
    proxmox = proxmox
  } 

  vm_name     = "c1al1k8sw01"
  target_node = "pmoxhost1"
  clone       = "ubuntu-jammy-template"
  cores       = 2
  sockets     = 1
  memory      = 2048
  disk_size   = "32G"
  storage     = "clusternfs"
  slot        = 1
  bridge      = "vmbr0"
  ciuser      = "dhaya"
  cipassword  = "black"
  ip_address  = "192.168.0.62"
  gateway     = "192.168.0.1"
}
