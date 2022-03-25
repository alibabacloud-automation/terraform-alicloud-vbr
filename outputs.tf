output "virtual_border_router_id" {
  description = "The resource ID in terraform of Virtual Border Router."
  value       = concat(alicloud_express_connect_virtual_border_router.vbr.*.id, [""])[0]
}

output "local_gateway_ip" {
  description = "Alibaba Cloud-Connected IPv4 address."
  value       = concat(alicloud_express_connect_virtual_border_router.vbr.*.local_gateway_ip, [""])[0]
}

output "peer_gateway_ip" {
  description = "The Client-Side Interconnection IPv4 Address."
  value       = concat(alicloud_express_connect_virtual_border_router.vbr.*.peer_gateway_ip, [""])[0]
}

output "peering_subnet_mask" {
  description = "Alibaba Cloud-Connected IPv4 and Client-Side Interconnection IPv4 of Subnet Mask."
  value       = concat(alicloud_express_connect_virtual_border_router.vbr.*.peering_subnet_mask, [""])[0]
}

output "physical_connection_id" {
  description = "The ID of the Physical Connection to Which the ID."
  value       = concat(alicloud_express_connect_virtual_border_router.vbr.*.physical_connection_id, [""])[0]
}

output "vlan_id" {
  description = " The VLAN ID of the VBR. Value range: 0~2999."
  value       = concat(alicloud_express_connect_virtual_border_router.vbr.*.vlan_id, [""])[0]
}

output "peer_asn" {
  description = "The AS number of the BGP peer."
  value       = concat(alicloud_vpc_bgp_group.bgp_group.*.peer_asn, [""])[0]
}

output "router_id" {
  description = "The ID of the VBR."
  value       = concat(alicloud_vpc_bgp_group.bgp_group.*.router_id, [""])[0]
}

output "enable_bfd" {
  description = "Specifies whether to enable the Bidirectional Forwarding Detection (BFD) feature."
  value       = concat(alicloud_vpc_bgp_peer.bgp_peer.*.enable_bfd, [""])[0]
}

output "peer_ip_address" {
  description = "The IP address of the BGP peer."
  value       = concat(alicloud_vpc_bgp_peer.bgp_peer.*.peer_ip_address, [""])[0]
}




