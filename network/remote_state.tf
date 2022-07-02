#DECLARAMOS EL NOMBRE DEL BUCKET Y LA RUTA EN LA QUE SE VA A GUARDAR EL ESTADO DE ESTE MAIN(NETWORK)

terraform {
  backend "gcs" {
    bucket = "tf-state-develop-test"
    prefix = "networks/develop-test.tfstate"
    #Activar Objets Versioning
  }

}

#DECLARAMOS DE QUE BUCKET DE DATOS VA A COGER EL ESTADO Y DENTRO SE ENCONTRARAN EL CONTENIDO DE LAS VARIABLES

data "terraform_remote_state" "common-variables-vpc" {
  backend = "gcs"
  config = {

    bucket = "tf-state-develop-test"
    prefix = "develop-test.tfstate"

  }
}