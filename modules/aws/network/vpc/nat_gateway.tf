resource "aws_eip" "eip" {
  vpc                       = true
  associate_with_private_ip = "${var.eip_private_ip}"

  tags {
      Name = "safimed-gw-eip"
  }
}

resource "aws_nat_gateway" "nat-gw" {
  allocation_id = "${aws_eip.eip.id}"
  subnet_id     = "${aws_subnet.public-subnet-1.id}"

  tags {
      Name = "safimed-nat-gateway"
  }

  depends_on = ["aws_eip.eip"]
}
