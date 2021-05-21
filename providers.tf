terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.67.0"
    }
  }
}

# Configura o Provider Google Cloud com o Projeto
provider "google" {
  project = "lab-devops-cloud-andre"
  region  = "southamerica-east1"
  zone    = "southamerica-east1-a"
}
