#alicloud_express_connect_virtual_border_router
local_gateway_ip           = "10.0.0.3"
peer_gateway_ip            = "10.0.0.4"
peering_subnet_mask        = "255.255.255.0"
virtual_border_router_name = "tf-testAcc-update"
min_rx_interval            = 200
min_tx_interval            = 200
detect_multiplier          = 9

#alicloud_vpc_bgp_group
auth_key       = "YourPassword+123456789"
bgp_group_name = "bgp_group_name_update"
description    = "description_update"
is_fake_asn    = false
local_asn      = 64513
peer_asn       = 1112

#alicloud_vpc_bgp_peer
bfd_multi_hop   = 13
enable_bfd      = false
peer_ip_address = "1.1.1.2"