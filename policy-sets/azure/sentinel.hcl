#------------------------------------------------------------------------------
# Sentinel Modules (function imports)
#------------------------------------------------------------------------------
module "tfplan-functions" {
  source = "./functions/tfplan-functions.sentinel"
}

module "azure-functions" {
  source = "./functions/azure-functions.sentinel"
}

#------------------------------------------------------------------------------
# Sentinel Policies
#------------------------------------------------------------------------------
policy "required-tags" {
  source            = "./policies/required-tags.sentinel"
  enforcement_level = "advisory"
}

policy "restrict-vm-size.sentinel" {
  source            = "./policies/restrict-vm-size.sentinel"
  enforcement_level = "advisory"
}