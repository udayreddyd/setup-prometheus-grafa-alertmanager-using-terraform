// Region for provisioning
region = "<region>"
// WLS config
service_name = "abc"
// WLS Edition
wls_edition = "EE"
# SE, EE, SUITE
// WLS Version
 wls_version = "12.2.1.4"
# 12.2.1.4, 14.1.1.0
// WLS instance shape
instance_shape = "VM.Standard2.2"
// WLS instances count
wls_node_count = "1"
// Database port
db_port = "1521"
// Add LB
add_load_balancer = false
lb_use_https = false
is_lb_private= false
// Add IDCS
is_idcs_selected = true
idcs_host = "<host>"
idcs_port = "443"
idcs_tenant = "<tenant>"
idcs_client_id = "<ID>"
idcs_client_secret_ocid = "<OCID>"
idcs_cloudgate_port = "9999"
// WLS admin Credentials
wls_admin_user = "<User>"
wls_admin_password_ocid = "<password OCID>"
// WLS custom image ID
instance_image_id = "<OCID>"
// WLS and VCN compartment ID
compartment_ocid = "<OCID>"
network_compartment_id = "<OCID>"
// Existing_vcn
wls_existing_vcn_id="<OCID>"
// Exisiting_subnet
wls_subnet_id="<OCID>"
// Existing LB Subnet
lb_subnet_id="<OCID>"
// Existing Bastion Subnet
bastion_subnet_id="<OCID>"
// This is for New VCN
wls_vcn_name="wls_vcn"
// WLS subnet CIDR, LB Backend and Frontend Subnet CIDRs for new
subnets that will be created.
wls_subnet_cidr = "20.0.0.0/10"
lb_subnet_1_cidr = "10.0.94.0/11"
lb_subnet_2_cidr ="10.0.95.0/11"
// not used for regional subnet - uncomment for non-regional.
// Bastion host subnet CIDR.
// Required for existing VCN and if not using existing bastion subnet
(see bastion_subnet_id)
// And if assign_weblogic_public_ip = false (using private subnet).
bastion_subnet_cidr="10.0.86.0/11"
// VCN Peering Parameters
ocidb_dns_subnet_cidr = "10.0.7.0/11"
wls_dns_subnet_cidr = "13.0.7.0/11"
// Private Subnet Config
assign_weblogic_public_ip = true
// Regional subnet config
use_regional_subnet = true
// WLS Console Port
wls_console_port="7001"

