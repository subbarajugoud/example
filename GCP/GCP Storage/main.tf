resource google_storage_bucket "GCS1" {
    location = "US-CENTRAL1"
    name = "shiva-bucket-from-tf-gcs-storage"
    storage_class = "standard"
  labels = {
    "env" = "tf_env"
    "dep" = "complience"
  } 
  uniform_bucket_level_access = true
  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "SetStorageClass"
      storage_class = "COLDLINE"
    }
  }
  }
 
resource "google_storage_bucket_object" "picture1" {
  name = "certified-in-cybersecurity-cc"
  bucket = google_storage_bucket.GCS1.name
  source = "certified-in-cybersecurity-cc.png"
}