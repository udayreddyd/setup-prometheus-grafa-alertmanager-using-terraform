// Region for provisioning
region = "<region>"

// WLS config
service_name = "WLSCIDCS"

// WLS instance shape
instance_shape = "VM.Standard2.2"

// WLS instances count
wls_node_count = "2"

// Add LB
add_load_balancer = true
lb_use_https = false

// Add IDCS
is_idcs_selected = true
idcs_host = "<host>"
idcs_port = "443"
idcs_tenant = "<tenant>"
idcs_client_id = "<ID>"
idcs_client_secret_ocid = "<OCID>"
idcs_cloudgate_port = "9999"

// WLS admin creds
wls_admin_user = "weblogic"
wls_admin_password_ocid = "<OCID>"

// WLS custom image ID
instance_image_id = "<OCID>"

// WLS and VCN compartment ID
compartment_ocid = "<OCID>"
network_compartment_id = "<OCID>"

// WLS existing VCN
wls_existing_vcn_id = "<OCID>"

// WLS existing VCN
wls_subnet_id = "<OCID>"

// LB existing Subnet
lb_subnet_1_id = "<OCID>"
#lb_subnet_2_id = "" -- not used for regional subnet - uncomment for nonregional.
wls_edition = "EE"
wls_version = "12.2.1.4"

//"12.2.1.4", 14.1.1.0
// Creating policies
create_policies = true

// Private Subnet Config
assign_weblogic_public_ip = true

// Regional subnet config
use_regional_subnet = true
wls_console_port="7001"

