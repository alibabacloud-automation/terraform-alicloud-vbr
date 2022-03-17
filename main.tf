locals {
  router_id    = var.router_id != "" ? var.router_id : concat(alicloud_express_connect_virtual_border_router.default.*.id, [""])[0]
  bgp_group_id = var.bgp_group_id != "" ? var.bgp_group_id : concat(alicloud_vpc_bgp_group.default.*.id, [""])[0]
}

resource "alicloud_express_connect_virtual_border_router" "default" {
  count                           = var.create ? 1 : 0
  associated_physical_connections = var.associated_physical_connections
  bandwidth                       = var.bandwidth
  circuit_code                    = var.circuit_code
  description                     = var.description
  detect_multiplier               = var.detect_multiplier
  enable_ipv6                     = var.enable_ipv6
  local_gateway_ip                = var.local_gateway_ip
  local_ipv6_gateway_ip           = var.local_ipv6_gateway_ip
  min_rx_interval                 = var.min_rx_interval
  min_tx_interval                 = var.min_tx_interval
  peer_gateway_ip                 = var.peer_gateway_ip
  peer_ipv6_gateway_ip            = var.peer_ipv6_gateway_ip
  peering_ipv6_subnet_mask        = var.peering_ipv6_subnet_mask
  peering_subnet_mask             = var.peering_subnet_mask
  physical_connection_id          = var.physical_connection_id
  vbr_owner_id                    = var.vbr_owner_id
  virtual_border_router_name      = var.virtual_border_router_name
  vlan_id                         = var.vlan_id
}

resource "alicloud_vpc_bgp_group" "default" {
  count          = var.create ? 1 : 0
  auth_key       = var.auth_key
  bgp_group_name = var.bgp_group_name
  description    = var.description
  is_fake_asn    = var.is_fake_asn
  local_asn      = var.local_asn
  peer_asn       = var.peer_asn
  router_id      = local.router_id
}

resource "alicloud_vpc_bgp_peer" "default" {
  count           = var.create ? 1 : 0
  bfd_multi_hop   = var.bfd_multi_hop
  bgp_group_id    = local.bgp_group_id
  enable_bfd      = var.enable_bfd
  ip_version      = var.ip_version
  peer_ip_address = var.peer_ip_address
}

resource "alicloud_vpc_bgp_network" "default" {
  count          = var.create ? 1 : 0
  dst_cidr_block = var.dst_cidr_block
  router_id      = local.router_id
}


