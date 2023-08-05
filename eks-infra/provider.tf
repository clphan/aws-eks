provider "aws" {
  region = var.region

  default_tags {
    tags = {
      "galistack:project" = "k8s-resource-recommendation-system"
      "galistack:iac"     = "terraform"
    }
  }
}
