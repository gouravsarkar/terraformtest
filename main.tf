provider "google" {
version = "3.5.0"
credentials = file("moonlit-text-385314-56bd5ec51788.json")
project = "moonlit-text-385314"
region = "us-central1"
zone = "us-central1-c"
}
resource "google_compute_network" "vpc_network01" {
name = "vpc-net-poc-01"
}
resource "google_compute_subnetwork" "public-subnetwork01" {
name = "vpc-subnet-poc-01"
ip_cidr_range = "10.2.0.0/16"
region = "us-central1"
network = google_compute_network.vpc_network01.name
}

resource "google_compute_network" "vpc_network02" {
name = "vpc-net-poc-02"
}
resource "google_compute_subnetwork" "public-subnetwork02" {
name = "vpc-subnet-poc-02"
ip_cidr_range = "10.3.0.0/16"
region = "us-central1"
network = google_compute_network.vpc_network02.name
}

resource "google_compute_network" "vpc_network03" {
name = "vpc-net-poc-03"
}
resource "google_compute_subnetwork" "public-subnetwork03" {
name = "vpc-subnet-poc-03"
ip_cidr_range = "10.4.0.0/16"
region = "us-central1"
network = google_compute_network.vpc_network03.name
}

resource "google_compute_network" "vpc_network04" {
name = "vpc-net-poc-04"
}
resource "google_compute_subnetwork" "public-subnetwork04" {
name = "vpc-subnet-poc-04"
ip_cidr_range = "10.5.0.0/16"
region = "us-central1"
network = google_compute_network.vpc_network04.name
}