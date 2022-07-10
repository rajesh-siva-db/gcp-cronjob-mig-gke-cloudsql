terraform {
  backend "gcs" {
    bucket = "ws9kiam-db-com-tf-state"
    prefix = "ws9kiam-cloudrun-migration-dev-cloudrun"
    // bucket  = "jkwng-altostrat-com-tf-state"
    // prefix = "jkwng-cloudrun-migration-dev-cloudrun"
  }

  required_providers {
    google = {
      // version = "~> 3.72.0"
      version = "~> 4.24.0"
    }
    google-beta = {
      // version = "~> 3.72.0"
      version = "~> 4.24.0"
    }
    null = {
      version = "~> 2.1"
    }
    random = {
      version = "~> 2.2"
    }
  }
}

provider "google" {
#  credentials = file(local.credentials_file_path)
}

provider "google-beta" {
#  credentials = file(local.credentials_file_path)
}

provider "null" {
}

provider "random" {
}
