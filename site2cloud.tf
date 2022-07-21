resource "aviatrix_site2cloud" "site2cloud_1" {
  vpc_id                     = module.aws_s2c.vpc.vpc_id
  connection_name            = "s2c-policy-based"
  connection_type            = "mapped"
  remote_gateway_type        = "generic"
  tunnel_type                = "policy"
  primary_cloud_gateway_name = "AVX-S2C-GW1"
  remote_gateway_ip          = "xx.yy.188.194"
  ha_enabled                 = true
  enable_single_ip_ha        = true
  private_route_encryption   = false
  backup_gateway_name        = "AVX-S2C-GW1-hagw"
  remote_subnet_cidr         = "192.168.100.0/24, 100.168.100.0/24"
  local_subnet_cidr          = "10.11.12.0/24, 10.0.4.0/22"
  remote_subnet_virtual      = "192.168.100.0/24, 100.168.100.0/24"
  local_subnet_virtual       = "100.11.12.0/24, 100.0.4.0/22"
  custom_algorithms          = false
  pre_shared_key             = "cisco123"
  backup_pre_shared_key      = ""
  enable_dead_peer_detection = true
  enable_ikev2               = false
  enable_active_active       = false
  forward_traffic_to_transit = false
  custom_mapped              = false
  phase1_remote_identifier = [
    "20.1.2.24"
  ]
}

resource "aviatrix_site2cloud" "site2cloud_2" {
  vpc_id                     = module.aws_s2c.vpc.vpc_id
  connection_name            = "s2c-policy-based-mikrotik2"
  connection_type            = "mapped"
  remote_gateway_type        = "generic"
  tunnel_type                = "policy"
  primary_cloud_gateway_name = "AVX-S2C-GW1"
  remote_gateway_ip          = "xx.yy.31.14"
  ha_enabled                 = true
  enable_single_ip_ha        = true
  private_route_encryption   = false
  backup_gateway_name        = "AVX-S2C-GW1-hagw"
  remote_subnet_cidr         = "192.168.200.0/24, 100.168.200.0/24"
  local_subnet_cidr          = "10.11.12.0/24, 10.0.4.0/22"
  remote_subnet_virtual      = "192.168.200.0/24, 100.168.200.0/24"
  local_subnet_virtual       = "100.11.12.0/24, 100.0.4.0/22"
  custom_algorithms          = false
  pre_shared_key             = "cisco123"
  backup_pre_shared_key      = ""
  enable_dead_peer_detection = true
  enable_ikev2               = false
  enable_active_active       = false
  forward_traffic_to_transit = false
  custom_mapped              = false
  phase1_remote_identifier = [
    "20.1.2.8"
  ]
}
