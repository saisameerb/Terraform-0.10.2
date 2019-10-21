provider "vsphere" {
    user                  = "${var.vsphere_user}"
    password              = "${var.vsphere_password}"
    vsphere_server        = "${var.vsphere_server}"
    allow_unverified_ssl  = "${var.allow_unverified_ssl}"
}

module "csm" {
  source = "git::http://stash.dev-charter.net/stash/scm/aut/terraform_modules.git?ref=v0.2.0//vmware_simple_vm_v2"
  default           = "${merge(var.default, var.csm_overrides)}"
  vms               = "${var.csm_vms}"
}

module " #Component 1" {
  source = "git link"
  default           = "${merge(var.default, var.*_overrides)}"
  vms               = "${var.*_vms}"
}

module " #Component 2" {
  source = "git link"
  default           = "${merge(var.default, var.*_overrides)}"
  vms               = "${var.*_vms}"
}

module "#Component 3" {
  source = "git link"
  default           = "${merge(var.default, var.*_overrides)}"
  vms               = "${var.*_vms}"
}

#Sample Template 
    
module "oracle_ams" {
  source = "git::http://stash.dev-charter.net/stash/scm/aut/terraform_modules.git?ref=v0.2.0//vmware_adddisk_vm_v2"
  default           = "${merge(var.default, var.oracle_ams_overrides)}"
  vms               = "${var.oracle_ams_vms}"
}


