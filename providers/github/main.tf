terraform {
  required_version = "= 0.11.14"
}

provider "github" {
  version      = "~> 2.2.1"
  token        = "${var.github_token}"
  organization = "${var.github_organization}"
}
