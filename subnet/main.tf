# Create subnets of a network


#Subnet create for ROIUP-Shared project 
module "subnet-main" {
  source          = "git::https://github.com/rocasna/module.subnet.project"
  name_network    = data.terraform_remote_state.network-main.outputs.Name_Network
  name_subnet          = data.terraform_remote_state.common-variables-vpc.outputs.Name_Subnet
  region          = data.terraform_remote_state.common-variables-vpc.outputs.Region
  ip_main_subnet  = data.terraform_remote_state.common-variables-vpc.outputs.Ip_Main_Subnet
  project_id = data.terraform_remote_state.common-variables-vpc.outputs.Project_Id
}
