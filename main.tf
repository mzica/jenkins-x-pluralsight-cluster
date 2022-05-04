module "jx" {
  source  = "jenkins-x/jx/google"
  version = "1.10.11"
  gcp_project = "avian-line-349215"
  cluster_name = "ps-jx-cluster"
  force_destroy = true
}

terraform {
  backend "gcs" {
    bucket = "ps-jx-terraform-state-files-mb"
    prefix = "terraform/state"
  }
}


