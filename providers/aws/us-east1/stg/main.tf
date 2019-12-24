provider "aws" {
  version = "~> 2.41.0"
  region  = "${var.region}"
  profile = "${var.aws_profile}"
}
