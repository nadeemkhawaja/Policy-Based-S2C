resource "aviatrix_gateway_snat" "gateway_snat_1" {
    gw_name = "AVX-S2C-Spoke"
    snat_mode = "customized_snat"
    snat_policy {
        src_cidr = "10.11.12.0/24"
        dst_cidr = "192.168.100.0/24"
        protocol = "all"
        interface = "eth0"
        connection = "None"
        snat_ips = module.aws_s2c.spoke_gateway.private_ip
    }

    sync_to_ha = false
}

resource "aviatrix_gateway_snat" "gateway_snat_2" {
    gw_name = "AVX-S2C-Spoke-hagw"
    snat_mode = "customized_snat"
    snat_policy {
        src_cidr = "10.11.12.0/24"
        dst_cidr = "100.168.100.0/24"
        protocol = "all"
        interface = "eth0"
        connection = "None"
        snat_ips = module.aws_s2c.spoke_gateway.ha_private_ip
    }

    sync_to_ha = false
}

resource "aviatrix_gateway_snat" "gateway_snat_3" {
    gw_name = "AVX-S2C-GW1"
    snat_mode = "customized_snat"
    snat_policy {
        src_cidr = "192.168.100.0/24"
        protocol = "all"
        interface = "eth0"
        connection = "None"
        snat_ips = "100.168.100.1"
    }

    sync_to_ha = true
}

resource "aviatrix_gateway_snat" "gateway_snat_4" {
    gw_name = "AVX-S2C-GW1-hagw"
    snat_mode = "customized_snat"
    snat_policy {
        src_cidr = "192.168.100.0/24"
        protocol = "all"
        interface = "eth0"
        connection = "None"
        snat_ips = "100.168.100.1"
    }

    sync_to_ha = false
}

