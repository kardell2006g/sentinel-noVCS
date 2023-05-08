provider "tfe" {
  organization = "noVCS"
}

data "tfe_slug" "azure" {
  # Point the source_path to the folder that has the policy set at the top level 
  # and the functions and policies as sub folders
  source_path = "../policy-sets/azure/"
}

resource "tfe_policy_set" "azure" {
  name        = "azure"
  description = "Azure Policy Set, Policies and Functions"
  slug        = data.tfe_slug.azure
}
