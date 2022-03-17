terraform-alicloud-vbr
======================

Terraform模块用于在阿里云上添加新的边界路由器,BGP网络,BGP组,BGP邻居。

支持以下类型的资源：

* [alicloud_vpc_bgp_group](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/vpc_bgp_group)
* [alicloud_vpc_bgp_peer](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/vpc_bgp_peer)
* [alicloud_express_connect_virtual_border_router](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/express_connect_virtual_border_router)
* [alicloud_vpc_bgp_network](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/vpc_bgp_network)


## 用法

创建一个BGP网络,边界路由器,BGP组,BGP邻居.

```hcl
module "example" {
  source                 = "terraform-alicloud-modules/vbr/alicloud"
  local_gateway_ip       = "your_local_gateway_ip"
  peer_gateway_ip        = "your_peer_gateway_ip"
  peering_subnet_mask    = "your_peering_subnet_mask"
  physical_connection_id = "your_physical_connection_id"
  vlan_id                = "your_vlan_id"

  peer_asn  = "your_peer_asn"
  router_id = "your_router_id"

  dst_cidr_block = "your_dst_cidr_block"
}
```


## 示例

* [VBR 完整示例](https://github.com/terraform-alicloud-modules/terraform-alicloud-vbr/tree/master/examples/complete)


## Terraform 版本

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | >= 1.67.0 |

作者
-------
Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)

许可
----
Apache 2 Licensed. See LICENSE for full details.

参考
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)
