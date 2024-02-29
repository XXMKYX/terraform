resource "google_compute_instance" "vm_instance" {
  name = "${var.instance_name}"
  # RESOURCE properties go here
  #These properties define the zone and machine type of the instance as input variables.
  zone         = "${var.instance_zone}"
  machine_type = "${var.instance_type}"
  #This property defines the boot disk because both VM instances will use the same image
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      }
  }
  #This property defines the network interface by providing the network name as an input variable and the access configuration
  network_interface {
    network = "${var.instance_network}"
    access_config {
      # Allocate a one-to-one NAT IP to the instance
    }
  }
}