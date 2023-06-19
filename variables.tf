### [BEGIN] variables.tf ###
variable "enable_resource_group_per_resource" {
  description = <<EOD
  [Optional] Set to `true` by default. Creates a resource group for each resource. If set to `false`, all resources will be created in the same resource group.
  EOD
  type = bool
  default = true
}
variable "resource_group_name" {
  description = <<EOD
  [Optional] The name of an existing resource group in which to provision the virtual network. If ommitted, a new resource group will be created.
  EOD
  type = string
  defualt = null
}

variable "address_space" {
  description = <<EOD
  [Optional] The address space that is used the virtual network. You can supply more than one address space. Changing this forces a new resource to be created. Must be provided in CIDR notation.
  EOD
  type = list(string)
  default = []
}

variable "dns_servers" {
  description = <<EOD
  [Optional] A list of DNS servers to associate with the virtual network. Changing this forces a new resource to be created.
  EOD
  type = list(string)
  default = []
}

variable "enable_default_subnet" {
  description = <<EOD
  [Optional] If set to false, the default subnet will not be created. Changing this forces a new resource to be created.
  EOD
  type = bool
  default = true
}
### [END] variables.tf ###

