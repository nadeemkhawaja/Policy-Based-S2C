terraform {
  required_providers {
    aviatrix = {
      source  = "aviatrixsystems/aviatrix"
      version = "~>2.22.0"
    }
  }
  required_version = ">= 1.1.0"
}

variable "controller_ip" {}
variable "username" {}
variable "password" {}

provider "aviatrix" {
  controller_ip           = var.controller_ip
  username                = var.username
  password                = var.password
  skip_version_validation = false
  verify_ssl_certificate  = false
}
