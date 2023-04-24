#--Set Terraform Cloud "Organization" & "Workspace"
terraform {
  cloud {
    organization = "tron_dataware"
    workspaces {
      name = "lab_tfc_github_lb_oci"
    }
  }
}

module "oci-lb" {
  source                    = "github.com/fc-terraform-code/tfc-oci-lb-core-module"
  tenancy_ocid              = var.tenancy_ocid
  user_ocid                 = var.user_ocid
  private_key               = var.private_key
  compartment_ocid          = var.compartment_ocid
  region                    = var.region
  fingerprint               = var.fingerprint
  display_name              = "fc-test-lb-2"
}
