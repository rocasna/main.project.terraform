# Create network in ROIUP-Host-VPC project

module "network-main" {
  source      = "git::https://github.com/rocasna/module.network.project"
  name_network    = data.terraform_remote_state.common-variables-vpc.outputs.Name_Network
  project_id = data.terraform_remote_state.common-variables-vpc.outputs.Project_Id
  region = data.terraform_remote_state.common-variables-vpc.outputs.Region
}