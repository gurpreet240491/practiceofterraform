resource_group1 = {
    rg1 = {
        name = "test_rg"
        location = "eastus"
    }

    rg2 = {
        name = "test_rg1"
        location = "westus"
    }
}

vnets1 = {
    vnet6 = {
        name = "vnettest"
        location = "eastus"
        resource_group_name = "test_rg"
        address_space = ["10.0.0.0/16"]
    } 
        vnet7 = {
        name = "vnettest2"
        location = "eastus"
        resource_group_name = "test_rg1"
        address_space = ["10.1.0.0/16"]
    }
}


subnets1 = {
    snet = {
        name = "subnettest"
        resource_group_name = "test_rg"
        virtual_network_name = "vnettest"
        address_prefixes = ["10.0.1.0/24"]
    }
}