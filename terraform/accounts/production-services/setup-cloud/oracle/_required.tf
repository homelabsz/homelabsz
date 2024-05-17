terraform {
  required_version = "~> 1.5"
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "~> 4.115"
    }
  }
}
