rgsg ={
    rg1 = {
        name = "rg-preproduction"
        location = "centralindia"
    }
}

vnetss = {
    vnet1 = {
        name = "virtualnetowrk"
        rg_name = "rg-preproduction"
        location = "centralindia"
        address_space = ["10.0.0.0/16"]

    }
}

subnetss = {
    sunets1 = {
  name = "frontend-subnet"
  rg_name = "rg-preproduction"
  vn_name = "virtualnetowrk"
  address_prefixes = ["10.0.1.0/24"]
    }
     sunets2 = {
  name = "backend-subnet"
  rg_name = "rg-preproduction"
  vn_name = "virtualnetowrk"
  address_prefixes = ["10.0.2.0/24"]
    }
}

pips = {
  pip1 = {
    public_ip_name      = "frontend_publicip_vm"
    rg_name = "rg-preproduction"
    location            = "centralindia"
    allocation_method   = "Static"
  }
  pips = {
    public_ip_name      = "backend_publicip_vm"
    rg_name  = "rg-preproduction"
    location            = "centralindia"
    allocation_method   = "Static"
  }  
}
vmss = {
      vm1 = {
    nic_name        = "frontend_nic_vm"
    location        = "centralindia"
    rg_name         = "rg-preproduction"
    subnet_name = "frontend-subnet"
    vn_name   = "virtualnetowrk"
    pip_name    = "frontend_publicip_vm"
    vm_name         = "frontend-vm"
    vm_size         = "Standard_B1s"
    admin_username  = "devopsadmin"
    admin_password  = "DevOps@123"
      }

  vm2 = {
    nic_name        = "backend_frontend_vm"
    location        = "koreasouth"
    rg_name         = "rg-preproduction"
    subnet_name = "backend-subnet"
    vn_name   = "virtualnetowrk"
    pip_name    = "backend_publicip_vm"
    vm_name         = "backend-vm"
    vm_size         = "Standard_B1s"
    admin_username  = "devopsadmin"
    admin_password  = "DevOps@123"
    image_publisher = "Canonical"
    image_offer     = "0001-com-ubuntu-server-jammy"
    image_sku       = "22_04-lts"
    image_version   = "latest"
  }
}