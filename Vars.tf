variable "vsphere_user" { type = "string" }
variable "vsphere_password" { type = "string" }

variable "vsphere_server" { type = "string" }

variable "allow_unverified_ssl" {
  default   = true
}

variable "default" {
  type = "map"
}

variable " #Component 1_overrides" { 
  type = "map"
}
variable " #Component 1_vms" {
  type = "list"
}

variable " #Component 2_overrides" {
  type = "map"
}
variable " #Component 2_vms" {
  type = "list"
}

variable " #Component 3_overrides" {
  type = "map"
}
variable "#Component 3" {
  type = "list"
}

variable "#Component 4_overrides" {
  type = "map"
}
variable "#Component 4_vms" {
  type = "list"
}

variable "#Component 5_overrides" {
  type = "map"
}
variable "#Component 5_vms" {
  type = "list"
}

variable "#Component 6_overrides" {
  type = "map"
}
variable "#Component 6_vms" {
  type = "list"
}

variable "#Component 7_overrides" {
  type = "map"
}
variable "#Component 7_vms" {
  type = "list"
}

variable "#Component 8_overrides" {
  type = "map"
}
variable "#Component 8_vms" {
  type = "list"
}

variable "#Component 9_overrides" {
  type = "map"
}
variable "#Component 9_vms" {
  type = "list"
}

variable "#Component10_overrides" {
  type = "map"
}
variable "#Component_vms" {
  type = "list"
}
