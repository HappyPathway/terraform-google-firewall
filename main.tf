resource "random_id" "firewall_id" {
  byte_length = 8
}

resource "google_compute_firewall" "default" {
  name    = "${var.role}-${var.gc_zone}-firewall-${random_id.firewall_id.hex}"
  network = "${var.network}" 

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "${var.protocol}"
    ports    = "${var.ports}"
  }

  source_ranges = [
    "${var.source_range}"
  ]
  
  target_tags = ["${var.role}", "${var.gc_zone}"]
}

output "firewall" {
  value = "${google_compute_firewall.default.self_link}"
}