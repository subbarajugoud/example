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
}
resource google_storage_bucket "GCS1" {
    location = "US-CENTRAL1"
    name = "shiva-bucket-from-tf-up"

   
}