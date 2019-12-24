module "base" {
  source      = "../../../../stacks/aws/doctdocs-base-vpc"

  net_cidr_block            = "${var.net_cidr_block}"
  net_public_subnet_1_cidr  = "${var.net_public_subnet_1_cidr}"
  net_public_subnet_2_cidr  = "${var.net_public_subnet_2_cidr}"
  net_public_subnet_3_cidr  = "${var.net_public_subnet_3_cidr}"
  net_private_subnet_1_cidr = "${var.net_private_subnet_1_cidr}"
  net_private_subnet_2_cidr = "${var.net_private_subnet_2_cidr}"
  net_private_subnet_3_cidr = "${var.net_private_subnet_3_cidr}"
  net_eip_private_ip        = "${var.net_eip_private_ip}"
}
