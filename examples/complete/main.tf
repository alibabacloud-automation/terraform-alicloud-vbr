provider "alicloud" {
  region = "cn-hangzhou"
}

data "alicloud_express_connect_physical_connections" "nameRegex" {
  name_regex = "^preserved-NODELETING"
}

module "vbr" {
  source = "../.."
  #  alicloud_express_connect_virtual_border_router
  create_vbr                 = true
  physical_connection_id     = data.alicloud_express_connect_physical_connections.nameRegex.connections.0.id
  vlan_id                    = var.vlan_id
  local_gateway_ip           = var.local_gateway_ip
  peer_gateway_ip            = var.peer_gateway_ip
  peering_subnet_mask        = var.peering_subnet_mask
  virtual_border_router_name = var.virtual_border_router_name
  min_rx_interval            = var.min_rx_interval
  min_tx_interval            = var.min_tx_interval
  detect_multiplier          = var.detect_multiplier

  #alicloud_vpc_bgp_group
  create_bgp_group = true
  auth_key         = var.auth_key
  bgp_group_name   = var.bgp_group_name
  description      = var.description
  is_fake_asn      = var.is_fake_asn
  local_asn        = var.local_asn
  peer_asn         = var.peer_asn
  router_id        = module.vbr.virtual_border_router_id


  # alicloud_vpc_bgp_peer
  create_bgp_peer = true
  bfd_multi_hop   = var.bfd_multi_hop
  enable_bfd      = var.enable_bfd
  ip_version      = "IPV4"
  peer_ip_address = var.peer_ip_address

  create_bgp_network = true
  dst_cidr_block     = "192.168.0.0/24"
}
