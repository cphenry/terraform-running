# Create VM

resource "random_id" "instance_id" {
  byte_length = 1
}

resource "google_compute_instance" "terrformer-vm" {
  name         = "${var.vm_prefix}-${random_id.instance_id.dec}"
  
  machine_type = "f1-micro"
  zone         = "us-central1-c"

  boot_disk {
    initialize_params {
      image = "rocky-linux-cloud/rocky-linux-8"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata_startup_script = "echo hi > /test.txt"

}