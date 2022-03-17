# alicloud_express_connect_virtual_border_router
variable "local_gateway_ip" {
  type        = string
  description = ""
  default     = "10.0.0.1"
}
variable "peer_gateway_ip" {
  type        = string
  description = ""
  default     = "10.0.0.2"
}

variable "peering_subnet_mask" {
  type        = string
  description = ""
  default     = "255.255.255.252"
}

variable "vlan_id" {
  type        = number
  description = ""
  default     = 1000
}

variable "virtual_border_router_name" {
  type        = string
  description = ""
  default     = "tf-testAcc"
}

variable "description" {
  type        = string
  description = ""
  default     = "tf-testAcc"
}

variable "min_rx_interval" {
  type        = number
  description = ""
  default     = 300
}

variable "min_tx_interval" {
  type        = number
  description = ""
  default     = 300
}

variable "detect_multiplier" {
  type        = number
  description = ""
  default     = 10
}


#alicloud_vpc_bgp_group
variable "auth_key" {
  type        = string
  description = ""
  default     = "YourPassword+123"
}

variable "bgp_group_name" {
  type        = string
  description = ""
  default     = "tf-testacc"
}

variable "is_fake_asn" {
  type        = bool
  description = ""
  default     = true
}

variable "local_asn" {
  type        = number
  description = ""
  default     = 64512
}

variable "peer_asn" {
  type        = number
  description = ""
  default     = 1111
}

#alicloud_vpc_bgp_peer
variable "bfd_multi_hop" {
  type        = number
  description = ""
  default     = 10
}

variable "enable_bfd" {
  type        = bool
  description = ""
  default     = true
}

variable "peer_ip_address" {
  type        = string
  description = ""
  default     = "1.1.1.1"
}

variable "router_id" {
  type        = string
  description = ""
  default     = ""
}