resource "aviatrix_gateway_dnat" "gateway_dnat_1" {
    gw_name = "AVX-S2C-Spoke"
    dnat_policy {
        src_cidr = "10.11.12.0/24"
        dst_cidr = "100.168.100.0/24"
        protocol = "all"
        #interface = "tun-22E982C5-0"
        connection = "AVX-Transit"
        dnat_ips = "192.168.100.1"
    }

    # dnat_policy {
    #     src_cidr = "10.11.12.0/24"
    #     dst_cidr = "100.168.100.0/24"
    #     protocol = "all"
    #     #interface = "tun-2CC26C9D-0"
    #     connection = "AVX-Transit"
    #     dnat_ips = "192.168.100.1"
    #}

    sync_to_ha = true
}

resource "aviatrix_gateway_dnat" "gateway_dnat_2" {
    gw_name = "AVX-S2C-Spoke-hagw"
    dnat_policy {
        src_cidr = "10.11.12.0/24"
        dst_cidr = "100.168.100.0/24"
        protocol = "all"
        #interface = "tun-22E982C5-0"
        connection = "AVX-Transit"
        dnat_ips = "192.168.100.1"
    }

    # dnat_policy {
    #     src_cidr = "10.11.12.0/24"
    #     dst_cidr = "100.168.100.0/24"
    #     protocol = "all"
    #     #interface = "tun-2CC26C9D-0"
    #     connection = "AVX-Transit"
    #     dnat_ips = "192.168.100.1"
    # }

    sync_to_ha = false
}

