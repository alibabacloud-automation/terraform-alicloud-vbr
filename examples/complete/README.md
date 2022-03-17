# VBR example

Configuration in this directory creates `alicloud_express_connect_virtual_border_router`,`alicloud_vpc_bgp_group`,`alicloud_vpc_bgp_peer` and `alicloud_vpc_bgp_network`.


# Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Run `terraform destroy` when you don't need these resources.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Outputs
| Name | Description |
|------|-------------|
| virtual_border_router_id | The resource ID in terraform of Virtual Border Router. |
| local_gateway_ip | Alibaba Cloud-Connected IPv4 address. |
| peer_gateway_ip | The Client-Side Interconnection IPv4 Address. |
| peering_subnet_mask | Alibaba Cloud-Connected IPv4 and Client-Side Interconnection IPv4 of Subnet Mask. |
| physical_connection_id | The ID of the Physical Connection to Which the ID. |
| vlan_id | The VLAN ID of the VBR. Value range: 0~2999. |
| peer_asn | The AS number of the BGP peer. |
| router_id | The ID of the VBR. |
| enable_bfd | Specifies whether to enable the Bidirectional Forwarding Detection (BFD) feature. |
| peer_ip_address | The IP address of the BGP peer. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
