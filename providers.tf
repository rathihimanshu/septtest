provider "aws" {
  region = "ap-southeast-1"
  access_key = var.accesskey
  secret_key = var.secretkey
}
terraform {
  cloud {
    organization = "septterracloud"
    workspaces {
      name = "gitworkspace"
    }
  }
}
resource "aws_iam_user" "gitrepouser" {
  name = "gitrepouse"
}
