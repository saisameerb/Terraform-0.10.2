vsphere_server = "CHANGEME_VSPHERE"

default = {
    # Change these to match your environment
    chef-environment = "CHANGEME_CHEF_ENV", # e.g., ladcca
    datacenter = "CHANGEME_DATACENTER", # e.g., LADCCA
    cluster = "CHANGEME_CLUSTER", # e.g., LADCCA_UCS_APP_01
    suffix = "CHANGEME_DEFAULT_SUFFIX", # e.g., ladcca
    domain = "CHANGEME_DEFAULT_DOMAIN", # e.g., ladc.ca.charter.com 
    dns_suffix_list = "CHANGEME_DEFAULT_DNS_SUFFIX", # e.g., ladc.ca.charter.com
    # Network settings and datastore should be defaulted to AV
    # but still explicitly declared/overriden for each component
    datastore = "CHANGEME_AV_DATASTORE", # default to AV, but be explicit in overrides
    net_label = "CHANGEME_AV_VLAN",
    net_prefix = "CHANGEME_AV_PREFIX", 
    gateway = "CHANGEME_AV_GATEWAY",
    # Set the template to be the CentOS_7 template as default. We will override this for the 6.5 components
    template = "CHANGEME_TEMPLATE_C7", # e.g., Spectrum/Charter_CentOS_7-2_1511-<latestimage>

    # These should be standard across your RDCs, templates, workspaces
    chef-server_url = "https://chef-srv01pvdcco.pvdc.co.charter.com/organizations/video_operations",
    project = "Spectrum", # Use for VM Folder name, must be same as resource pool name.
    vm-initial_user = "silver",
    vm-initial_password = "CHANGEME_PASSWORD_C7",
    dns_server_list = "71.10.216.1",
    chef-user_name = "terraform",

    # These defaults are set but in general should be overriden for your component type
    # Building VMs without overriding these variables may result in undefined behavior
    name_start_count = 01,
    cpu = 2,
    memory = 4096,
    disk-type = "thin",
    add_disk_type = "thin",
    prefix = "oops-i-need-a-name" 
    add_disk_size = "10",

    # These are set so the provisioning works properly, and shouldn't need to be changed.
    add_disk_suffix = "disk01",
    add_disk_type = "thin",
    add_disk_controller_type = "scsi",
    chef-run_list = "role[NULL-does-nothing]",
    chef-attributes_json = "{}",
    chef-client_version = "12.19.36",
    chef-ssl_verify_mode = ":verify_none",
    chef-skip_client_install = true,
}

csm_overrides = {
  prefix = "csm"
  cpu = 8,
  memory = 8192,
  net_label = "CHANGEME_AV_VLAN",
  net_prefix = "CHANGEME_AV_PREFIX", 
  gateway = "CHANGEME_AV_GATEWAY",
  datastore = "CHANGEME_AV_DATASTORE",
}
csm_vms = [
  { ip = "CHANGEME_IP_CSM01", },
  { ip = "CHANGEME_IP_CSM02", },
  { ip = "CHANGEME_IP_CSM03", },
]

cache_overrides = {
  prefix = "pxy"
  cpu = 2,
  memory = 4096,
  add_disk_size = 50,
  net_label = "CHANGEME_AV_VLAN",
  net_prefix = "CHANGEME_AV_PREFIX",
  gateway = "CHANGEME_AV_GATEWAY",
  datastore = "CHANGEME_AV_DATASTORE",
}
cache_vms = [
   { ip = "CHANGEME_IP_PXY01", },
   { ip = "CHANGEME_IP_PXY02", },
   { ip = "CHANGEME_IP_PXY03", },
   { ip = "CHANGEME_IP_PXY04", },
]

content_overrides = {
  prefix = "vms"
  cpu = 4,
  memory = 4096,
  net_label = "CHANGEME_AV_VLAN",
  net_prefix = "CHANGEME_AV_PREFIX",
  gateway = "CHANGEME_AV_GATEWAY",
  datastore = "CHANGEME_AV_DATASTORE",
}
content_vms = [
   { ip = "CHANGEME_IP_VMS01", },
   { ip = "CHANGEME_IP_VMS02", },
]

cookie_overrides = {
  prefix = "gpc"
  cpu = 4,
  memory = 4096,
  net_label = "CHANGEME_AV_VLAN",
  net_prefix = "CHANGEME_AV_PREFIX",
  gateway = "CHANGEME_AV_GATEWAY",
  datastore = "CHANGEME_AV_DATASTORE",
}
cookie_vms = [
  { ip = "CHANGEME_IP_GPC01", },
  { ip = "CHANGEME_IP_GPC02", },
  { ip = "CHANGEME_IP_GPC03", },
]

ams_overrides = {
  cpu = 4,
  memory = 32768,
  net_label = "CHANGEME_ZODIAC_VLAN",
  net_prefix = "CHANGEME_ZODIAC_PREFIX",
  gateway = "CHANGEME_ZODIAC_GATEWAY",
  datastore = "CHANGEME_AV_DATASTORE",
  template = "CHANGEME_TEMPLATE_C65", # Use Centos 6.5 for the AMS
  vm-initial_password = "CHANGEME_PASSWORD_C65",
  add_disk_size = 400,
  chef-environment = "CHANGEME_CHEF_ENV_AMS_TSB",
}
ams_vms = [
  { ip = "CHANGEME_IP_AMS01",  name = "CHANGEME_NAME_AMS01"}, # e.g., ams01grdca
  { ip = "CHANGEME_IP_AMS02",  name = "CHANGEME_NAME_AMS02"}, # e.g., ams02grdca
  #{ ip = "CHANGEME",  name = "CHANGEME"},# Define more than 2 AMS nodes just like this
  #{ ip = "CHANGEME",  name = "CHANGEME"},
]

oracle_ams_overrides = {
  prefix = "dbho"
  cpu = 4,
  memory = 16384,
  net_label = "CHANGEME_ZODIAC_VLAN",
  net_prefix = "CHANGEME_ZODIAC_PREFIX",
  gateway = "CHANGEME_ZODIAC_GATEWAY",
  datastore = "CHANGEME_AV_DATASTORE",
  template = "CHANGEME_TEMPLATE_C65", # Use Centos 6.5 for the Oracle AMS
  vm-initial_password = "CHANGEME_PASSWORD_C65",
  add_disk_size = 1000,
}
oracle_ams_vms = [
  { ip = "CHANGEME_IP_DBHO1"},
]

tsb_overrides = {
  cpu = 4,
  memory = 16384,
  net_label = "CHANGEME_AV_VLAN",
  net_prefix = "CHANGEME_AV_PREFIX", 
  gateway = "CHANGEME_AV_GATEWAY",
  net2_label = "CHANGEME_AV_VLAN",
  net2_prefix = "CHANGEME_AV_PREFIX", 
  gateway2 = "CHANGEME_AV_GATEWAY",
  datastore = "CHANGEME_AV_DATASTORE", # Use Centos Override the default of Centos 7 to use Centos 6.5 for the TSB
  template = "CHANGEME_TEMPLATE_C65", # Use Centos 6.5 for TSB
  vm-initial_password = "CHANGEME_PASSWORD_C65",
  chef-environment = "CHANGEME_CHEF_ENV_AMS_TSB",
}
tsb_vms = [
  { ip = "CHANGEME_IP_DMC01_ETH_A", ip2 = "CHANGEME_IP2_DMC01_ETH_AB", name = "CHANGEME_NAME_DMC01_ETH_A" }, # e.g., dmc01mpksca-eth-a
  { ip = "CHANGEME_IP_DMC01_ETH_B", ip2 = "CHANGEME_IP2_DMC01_ETH_AB", name = "CHANGEME_NAME_DMC01_ETH_B" }, # e.g., dmc01mpksca-eth-b
  #{ ip = "CHANGEME", name = "CHANGEME" },# Define more than 2 TSB nodes just like this
  #{ ip = "CHANGEME", name = "CHANGEME" },
]

nms_overrides = {
  prefix = "nms"
  cpu = 3,
  memory = 3072,
  net_label = "CHANGEME_TOOLS_VLAN",
  net_prefix = "CHANGEME_TOOLS_PREFIX",
  gateway = "CHANGEME_TOOLS_GATEWAY",
  datastore = "CHANGEME_TOOLS_DATASTORE",
  template = "CHANGEME_TEMPLATE_C65", # Use Centos 6.5 for NMS
  vm-initial_password = "CHANGEME_PASSWORD_C65",
  chef-environment = "CHANGEME_CHEF_ENV_TOOL",
}
nms_vms = [
  { ip = "CHANGEME_IP_NMS01"},
  { ip = "CHANGEME_IP_NMS02"},
]

sat_overrides = {
  prefix = "sat",
  cpu = 4,
  memory = 8192,
  net_label = "CHANGEME_TOOLS_VLAN",
  net_prefix = "CHANGEME_TOOLS_PREFIX",
  gateway = "CHANGEME_TOOLS_GATEWAY",
  datastore = "CHANGEME_TOOLS_DATASTORE",
  chef-environment = "CHANGEME_CHEF_ENV_TOOL",
}

sat_vms = [
  { ip = "CHANGEME_IP_SAT01"},
  { ip = "CHANGEME_IP_SAT02"},
]

mrd_overrides = {
  prefix = "mrd"
  cpu = 4,
  memory = 12288,
  net_label = "CHANGEME_TOOLS_VLAN",
  net_prefix = "CHANGEME_TOOLS_PREFIX",
  gateway = "CHANGEME_TOOLS_GATEWAY",
  datastore = "CHANGEME_TOOLS_DATASTORE",
  chef-environment = "CHANGEME_CHEF_ENV_TOOL",
}
mrd_vms = [
  { ip = "CHANGEME_IP_MRD01"},
  { ip = "CHANGEME_IP_MRD02"},
]

