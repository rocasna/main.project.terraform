#BASICAMENTE ES LA CONEXION CON GCP, DANDOLE EL JSON PARA ACCEDER Y EL PROYECTO AL QUE VAMOS A UTILIZAR.
terraform {
  required_providers {
    google = {
      source  = "google"
      version = "=3.74.0"
    }
  }
}
provider "google" {
  alias       = "host-project"
  credentials = data.terraform_remote_state.common-variables-vpc.outputs.Path_Credential_Files_Host_Project
  project     = data.terraform_remote_state.common-variables-vpc.outputs.Project_Id

}