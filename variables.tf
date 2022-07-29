/*

These are variables to create basic environment in Oracle Cloud Infrastructure.

Depending on requirement variables can be modified. Following environment variable must be edited.

* ssh_public_key

For more detailed instructions review main.tf

Author: Uday 16/01/2021 

*/


variable "tenancy_ocid" { default = "ocid1.tenancy.oc1..aaaaaaaa3mfhmvctezbpeyvi6qg4qkkispb43ikzb4bfx3w72dr3rlxtph6a" }
variable "user_ocid" { default = "ocid1.user.oc1..aaaaaaaacborbsz77opq36h2s64jhunwxnnyhyomwl7bjquaty37reyipwnq" }
variable "fingerprint" { default = "88:49:86:d7:dd:5c:d4:a9:4a:76:a3:df:80:42:71:ed" }
variable "private_key_path" { default = "private.pem" }
variable "region" { default = "IAD"}


# Variables to create compartments for Demo

variable "compartment_name" { default = "prom-graf-alert" }
variable "compartment_description" { default = "Compartment for prometheus grafa and alertmanagers" }

# Variables to create Tag Namespace

variable "tags" {
  type = map
  default = {
    "DemoTagNamespace.Environment" = "poc"
    "DemoTagNamespace.Owner"       = "Me"
  }
}
variable "tag_names" { default = ["Environment", "Owner"] }

variable "tag_namespace_description" { default = "Tag namespace for all resources" }
variable "tag_namespace_name" { default = "prom-graf-alert-Namespace" }
variable "is_retired" { default = "false" }

variable "tag_description" { default = ["Environment purpose", "Owner for resource"] }

# IGW variables
variable "internet_gateway_enabled" { default = "true" }
variable "internet_gateway_display_name" { default = "prom-graf-alert-IGW" }

variable "igw_route_table_rules_cidr_block" { default = "0.0.0.0/0" }

# VCN variables

variable "vcn_cidr_block" { default = "172.27.0.0/16" }
variable "vcn_display_name" { default = "prom-graf-alert-VCN" }
variable "vcn_dns_label" { default = "demo" }

variable "route_table_display_name" {
  default = "prom-graf-alert-RT"
}

variable "ad_number" {
  default = "0"
}

variable "compartment_display_name" {
  default = "prom-graf-alert-compartment"
}

variable "vcn_ingress_protocol" {
  default = "all"
}

# Applications security list variables

variable "private_security_list_name" {
  default = "prom-graf-alertSL"
}

variable "egress_destination" {
  default = "0.0.0.0/0"
}

variable "egress_protocol" {
  default = "all"
}

variable "ingress_source" {
  default = "0.0.0.0/0"
}

variable "ingress_protocol" {
  default = "6"
}

variable "ingress_stateless" {
  default = false
}



# Subnet variables

variable "cidr_block_subnet" {
  default = "172.27.0.0/24"
}

variable "display_name_subnet" {
  default = "prom-graf-alt-subnet"
}

variable "dns_label_subnet" {
  default = "promgrafalert"
}



variable "ingress_ports" {
  description = "all the ports for security list"
  default = [
    { minport     = 0
      maxport     = 0
      source_cidr = "0.0.0.0/0"
    },
    { minport     = 0
      maxport     = 0
      source_cidr = "172.27.0.0/16"
  }]
}

// INSTANCE VARIABLES

variable "operating_system" {
  default = "Oracle Linux"
} // Name for the OS

variable "operating_system_version" {
  default = "7.9"
} // OS Version

variable "shape_name" {
  default = "VM.Standard.E2.1"
   #default = "VM.Standard.E2.1.Micro"
} // Shape what to be used. Smallest shape selected by default

variable "source_type" {
  default = "image"
} // What type the image source is

variable "assign_public_ip" {
  default = "true"
} // This is server in public subnet it will have a public IP

variable "instance_variables" {
  description = "Map instance name to hostname"
  default = {
    "Prometeus" = "Prometheus"
    "Grafana" = "Grafana"
    "AlertManager" = "AlertManager"
  }
}
variable "instance_create_vnic_details_hostname_label" {
  default = "ForEach"
}

variable "is_monitoring_disabled" {
  default = false
}


variable "ssh_public_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC8c7qWFO3J/GMm52ESJuFUg+jxUXxAir8h3u7cxsU1Zlu4rnPIAXVrehc3kp+0CsEvVEyiv73XPPb7/8ox1bn9BWn/vC6DX4NkW1GRDpaDNoml2TirUeIX89kI3v0/jwQHXL8AkSld/z2dl5hzZ/z5+gmCrdPuJmG0OSxxlpPVl4mKRMxXZpndWBIG55WfTPXOYDQub0z/pgAM1I3yl/+5GJJEXziPXrbdUfCfsXrGoRSF6NCOl6n8oRG2X/spO0zFg+EUZuNuVUcat9Y2GuKnXY1ix21vXuxKur6agWTLZxiaVy8bvLsAhRDgC5/aOvxKA7lklCcGf8Sx8TJ4xpyGydTUOw/RIYp788hJcSCyqBs/RXcZcMB9Ssqf9E+d4Pq+Ip6h6cN1KswF7dSo0pPHAJnvpyoCNr3k3mzr03pJohHp1KYgohYa7ZBc58IZZO4vu2Rn0h8TQbFds+NFyHfOYMXw0LrnaN+gF5nUL1RMIHTY+dXObveOT5+UBXa3UVU= tests@DharmaiahgariFamily"
}


variable "instance_create_vnic_details_skip_source_dest_check" {
  default = false
}
