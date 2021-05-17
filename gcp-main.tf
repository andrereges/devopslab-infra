# Cria uma VM no Google Cloud
resource "google_compute_instance" "helloworld" {
  name         = "website"
  machine_type = "n1-standard-1"
  zone         = "southamerica-east1-a"
  tags         = ["labdevops"]

  # Defini a Imagem da VM
  boot_disk {
    initialize_params {
      image = "ubuntu-1804-bionic-v20210508"
    }
  }

  # Habilita rede para a VM com um IP público
  network_interface {
    network = "default" # Estamos usando a VPC default que já vem por padrão no projeto.

    access_config {
    }
    // A presença do bloco access_config, mesmo sem argumentos, garante que a instância estará acessível pela internet.
  }

}

# Retorna o IP da VM criada
output "ip" {
  value = google_compute_instance.helloworld.network_interface.0.access_config.0.nat_ip
}

