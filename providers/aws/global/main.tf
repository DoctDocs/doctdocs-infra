terraform {
  required_version = "= 0.11.14"
}

provider "aws" {
  version = "~> 2.41.0"
  region  = "${var.region}"
  profile = "${var.aws_profile}"
}
