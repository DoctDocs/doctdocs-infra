variable "region" {
    default = "us-east-1"
}

variable "aws_profile" {
    default = "safimed"
}

#=============#
#   Network   #
#=============#

variable "net_cidr_block" {
    default = "10.0.0.0/16"
}

variable "net_public_subnet_1_cidr" {
    default = "10.0.1.0/24"
}
variable "net_public_subnet_2_cidr" {
    default = "10.0.2.0/24"
}
variable "net_public_subnet_3_cidr" {
    default = "10.0.3.0/24"
}

variable "net_private_subnet_1_cidr" {
    default = "10.0.4.0/24"
}
variable "net_private_subnet_2_cidr" {
    default = "10.0.5.0/24"
}
variable "net_private_subnet_3_cidr" {
    default = "10.0.6.0/24"
}

variable "net_eip_private_ip" {
    default = "10.0.0.5"
}