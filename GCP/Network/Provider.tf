terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.83.0"
    }
  }
}

provider "google" {
  project = "terraform-to-gcp"
  region = "us-central1"
  zone = "us-central1-a"
  credentials = "terraform-to-gcp-sa-keys.json"
}
