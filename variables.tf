variable "create" {
  type        = bool
  description = "Whether to create the specified resource"
  default     = true
}
#alicloud_vpc_bgp_group
variable "associated_physical_connections" {
  type        = string
  description = "The associated physical connections."
  default     = ""
}
variable "bandwidth" {
  type        = number
  description = "The bandwidth."
  default     = null
}

variable "circuit_code" {
  type        = string
  description = "Operators for physical connection circuit provided coding."
  default     = ""
}

variable "description" {
  type        = string
  description = "The description of VBR. Length is from 2 to 256 characters, must start with a letter or the Chinese at the beginning, but not at the http:// Or https:// at the beginning."
  default     = ""
}

variable "detect_multiplier" {
  type        = number
  description = "Detection time multiplier that recipient allows the sender to send a message of the maximum allowable connections for the number of packets, used to detect whether the link normal. Value: 3~10."
  default     = null
}

variable "enable_ipv6" {
  type        = bool
  description = "Whether to Enable IPv6. Valid values: false, true."
  default     = null
}
variable "local_gateway_ip" {
  type        = string
  description = "Alibaba Cloud-Connected IPv4 address."
  default     = ""
}
variable "local_ipv6_gateway_ip" {
  type        = string
  description = "Alibaba Cloud-Connected IPv6 Address."
  default     = ""
}

variable "min_rx_interval" {
  type        = number
  description = "Configure BFD packet reception interval of values include: 200~1000, unit: ms."
  default     = null
}

variable "min_tx_interval" {
  type        = number
  description = "Configure BFD packet transmission interval maximum value: 200~1000, unit: ms."
  default     = null
}

variable "peer_gateway_ip" {
  type        = string
  description = "The Client-Side Interconnection IPv4 Address."
  default     = ""
}

variable "peer_ipv6_gateway_ip" {
  type        = string
  description = "The Client-Side Interconnection IPv6 Address."
  default     = ""
}

variable "peering_ipv6_subnet_mask" {
  type        = string
  description = "Alibaba Cloud-Connected IPv6 with Client-Side Interconnection IPv6 of Subnet Mask."
  default     = ""
}

variable "peering_subnet_mask" {
  type        = string
  description = "Alibaba Cloud-Connected IPv4 and Client-Side Interconnection IPv4 of Subnet Mask."
  default     = ""
}

variable "physical_connection_id" {
  type        = string
  description = "The ID of the Physical Connection to Which the ID."
  default     = ""
}

variable "vbr_owner_id" {
  type        = string
  description = "The vbr owner id."
  default     = ""
}

variable "vlan_id" {
  type        = number
  description = "The VLAN ID of the VBR. Value range: 0~2999."
  default     = null
}

# alicloud_vpc_bgp_group
variable "auth_key" {
  type        = string
  description = "The authentication key of the BGP group."
  default     = ""
}

variable "bgp_group_name" {
  type        = string
  description = "The name of the BGP group. The name must be 2 to 128 characters in length and can contain digits, periods (.), underscores (_), and hyphens (-). The name must start with a letter but cannot start with http:// or https://."
  default     = ""
}

variable "is_fake_asn" {
  type        = bool
  description = "The is fake asn. A router that runs BGP typically belongs to only one AS. In some cases, for example, the AS needs to be migrated or is merged with another AS, a new AS number replaces the original one."
  default     = null
}

variable "local_asn" {
  type        = number
  description = "The AS number on the Alibaba Cloud side."
  default     = null
}

variable "peer_asn" {
  type        = number
  description = "The AS number of the BGP peer."
  default     = null
}

variable "router_id" {
  type        = string
  description = "The ID of the VBR."
  default     = ""
}

# alicloud_vpc_bgp_peer
variable "virtual_border_router_name" {
  type        = string
  description = "The name of VBR. Length is from 2 to 128 characters, must start with a letter or the Chinese at the beginning can contain numbers, the underscore character (_) and dash (-). But do not start with http:// or https:// at the beginning."
  default     = ""
}

variable "bfd_multi_hop" {
  type        = number
  description = "The BFD hop count. Valid values: 1 to 255. NOTE: The attribute is valid when the attribute enable_bfd is true. The parameter specifies the maximum number of network devices that a packet can traverse from the source to the destination. You can set a proper value based on the factors that affect the physical connection."
  default     = 1
}

variable "enable_bfd" {
  type        = bool
  description = "Specifies whether to enable the Bidirectional Forwarding Detection (BFD) feature."
  default     = true
}

variable "ip_version" {
  type        = string
  description = "The IP version."
  default     = ""
}

variable "peer_ip_address" {
  type        = string
  description = "The IP address of the BGP peer."
  default     = ""
}

variable "bgp_group_id" {
  type        = string
  description = "The BGP Group Id"
  default     = ""
}

#alicloud_vpc_bgp_network
variable "dst_cidr_block" {
  type        = string
  description = "The CIDR block of the virtual private cloud (VPC) or vSwitch that you want to connect to a data center."
  default     = ""
}



