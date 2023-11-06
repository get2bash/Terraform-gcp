
resource "google_compute_instance" "server1" {
  name         = "tf-instance-1"
  machine_type = "e2-medium"
  zone         = "us-east1-b"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata_startup_script = <<-EOT
        #!/bin/bash
    EOT
  allow_stopping_for_update = true
}

resource "google_compute_instance" "server2" {
  name         = "tf-instance-2"
  machine_type = "e2-medium"
  zone         = "us-east1-b"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata_startup_script = <<-EOT
        #!/bin/bash
    EOT
  allow_stopping_for_update = true
}


# resource "google_compute_instance" "server3" {
#   name         = "tf-instance-142837"
#   machine_type = "e2-standard-2"
#   zone         = "us-east1-b"

#   boot_disk {
#     initialize_params {
#       image = "debian-cloud/debian-11"
#       labels = {
#         my_label = "value"
#       }
#     }
#   }

#   network_interface {
#     network = "default"

#     access_config {
#       // Ephemeral public IP
#     }
#   }

#   metadata_startup_script = <<-EOT
#         #!/bin/bash
#     EOT
#   allow_stopping_for_update = true
# }


# resource "google_compute_instance" "server1" {
#   name         = "tf-instance-1"
#   machine_type = "e2-standard-2"
#   zone         = "us-east1-b"

#   boot_disk {
#     initialize_params {
#       image = "debian-cloud/debian-10"
#       labels = {
#         my_label = "value"
#       }
#     }
#   }

#   network_interface {
#     network   = var.network_name
#     subnetwork = "subnet-01"
#     access_config {
#       // Ephemeral public IP
#     }
#   }

#   metadata_startup_script = <<-EOT
#         #!/bin/bash
#     EOT
#   allow_stopping_for_update = true
# }

# resource "google_compute_instance" "server2" {
#   name         = "tf-instance-2"
#   machine_type = "e2-standard-2"
#   zone         = "us-east1-b"

#   boot_disk {
#     initialize_params {
#       image = "debian-cloud/debian-10"
#       labels = {
#         my_label = "value"
#       }
#     }
#   }

#   network_interface {
#     network   = var.network_name
#     subnetwork = "subnet-02"

#     access_config {
#       // Ephemeral public IP
#     }
#   }

#   metadata_startup_script = <<-EOT
#         #!/bin/bash
#     EOT
#   allow_stopping_for_update = true
# }


