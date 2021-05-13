terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.64.0"
    }
  }
}

# Configura o Provider Google Cloud com o Projeto
provider "google" {

  credentials = file("/home/vagrant/lab-devops-cloud-andre-bafbaf4d095c.json")

  project = "lab-devops-cloud-andre"
  region  = "southamerica-east1"
  zone    = "southamerica-east1-a"
}
