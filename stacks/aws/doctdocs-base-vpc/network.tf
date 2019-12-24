module "network" {
  source = "../../../modules/aws/network/vpc"

  cidr_block            = "${var.net_cidr_block}"
  public_subnet_1_cidr  = "${var.net_public_subnet_1_cidr}"
  public_subnet_2_cidr  = "${var.net_public_subnet_2_cidr}"
  public_subnet_3_cidr  = "${var.net_public_subnet_3_cidr}"
  private_subnet_1_cidr = "${var.net_private_subnet_1_cidr}"
  private_subnet_2_cidr = "${var.net_private_subnet_2_cidr}"
  private_subnet_3_cidr = "${var.net_private_subnet_3_cidr}"
  eip_private_ip        = "${var.net_eip_private_ip}"
}
