
variable "gc_region" {
  default = "us-east1"
}

variable "gc_zone" {
	default = "us-east1-b"
}

variable "google_project" {
  default = "titanium-flash-726"
}

variable "dns_managed_zone" {
  default = "main-domain"
}

variable "role" {}
variable "network" {}
variable "protocol" {}
variable "ports" {
  type = "list"
}
variable "source_range" {}