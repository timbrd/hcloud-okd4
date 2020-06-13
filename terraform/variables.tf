variable "replicas_master" {
  type        = number
  default     = 3
  description = "Count of master replicas"
}

variable "replicas_worker" {
  type        = number
  default     = 3
  description = "Count of worker replicas"
}

variable "replicas_haproxy" {
  type        = number
  default     = 1
  description = "Count of haproxy replicas"
}

variable "bootstrap" {
  type        = bool
  default     = false
  description = "Whether to deploy a bootstrap instance"
}

variable "dns_domain" {
  type        = string
  description = "Name of the Cloudflare domain"
}

variable "dns_zone_id" {
  type        = string
  description = "Zone ID of the Cloudflare domain"
}

variable "ip_loadbalancer_api" {
  description = "IP of an external loadbalancer for api (optional)"
  default     = null
}

variable "ip_loadbalancer_api_int" {
  description = "IP of an external loadbalancer for api-int (optional)"
  default     = null
}

variable "ip_loadbalancer_apps" {
  description = "IP of an external loadbalancer for apps (optional)"
  default     = null
}

variable "network_cidr" {
  type        = string
  description = "CIDR for the network"
  default     = "192.168.0.0/16"
}

variable "subnet_cidr" {
  type        = string
  description = "CIDR for the subnet"
  default     = "192.168.254.0/24"
}

variable "server_type_bootstrap" {
  type        = string
  description = "Hetzner cloud's server type used for bootstrap node"
  default     = "cx41"
}

variable "server_type_master" {
  type        = string
  description = "Hetzner cloud's server type used for master nodes"
  default     = "cx41"
}

variable "server_type_worker" {
  type        = string
  description = "Hetzner cloud's server type used for worker nodes"
  default     = "cx41"
}

variable "location" {
  type        = string
  description = "The location name to create the server in. nbg1, fsn1 or hel1"
  default     = "nbg1"
}
