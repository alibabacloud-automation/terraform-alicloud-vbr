# terraform-alicloud-vbr
Terraform Module for creating Virtual Border Router on Alibaba Cloud.

English | [简体中文](https://github.com/terraform-alicloud-modules/terraform-alicloud-vbr/blob/master/README-CN.md)

Terraform module is used to add new express connect virtual border routers, BGP network, group, peer on Alibaba Cloud

These types of resources are supported:

* [alicloud_vpc_bgp_group](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/vpc_bgp_group)
* [alicloud_vpc_bgp_peer](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/vpc_bgp_peer)
* [alicloud_express_connect_virtual_border_router](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/express_connect_virtual_border_router)
* [alicloud_vpc_bgp_network](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/vpc_bgp_network)


## Usage

Create a express connect virtual border routers, BGP network, group, peer.
```hcl
module "example" {
  source                 = "terraform-alicloud-modules/vbr/alicloud"
  create_vbr             = true
  local_gateway_ip       = "your_local_gateway_ip"
  peer_gateway_ip        = "your_peer_gateway_ip"
  peering_subnet_mask    = "your_peering_subnet_mask"
  physical_connection_id = "your_physical_connection_id"
  vlan_id                = "your_vlan_id"
  create_bgp_group       = true
  peer_asn               = "your_peer_asn"
  router_id              = "your_router_id"

  create_bgp_peer = true
  dst_cidr_block  = "your_dst_cidr_block"
}
```

## Examples

* [complete example](https://github.com/terraform-alicloud-modules/terraform-alicloud-vbr/tree/master/examples/complete)

## Terraform versions

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | >= 1.153.0 |

Authors
-------
Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)

License
----
Apache 2 Licensed. See LICENSE for full details.

Reference
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)
