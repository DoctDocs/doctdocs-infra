resource "aws_route_table" "public-route-table" {
  vpc_id = "${aws_vpc.vpc.id}"

  tags {
      Name = "public-route-table"
  }
}

resource "aws_route_table" "private-route-table" {
  vpc_id = "${aws_vpc.vpc.id}"

  tags {
      Name = "private-route-table"
  }
}

resource "aws_route_table_association" "rt-associate-public-subnet-1" {
  subnet_id      = "${aws_subnet.public-subnet-1.id}"
  route_table_id = "${aws_route_table.public-route-table.id}"
}

resource "aws_route_table_association" "rt-associate-public-subnet-2" {
  subnet_id      = "${aws_subnet.public-subnet-2.id}"
  route_table_id = "${aws_route_table.public-route-table.id}"
}

resource "aws_route_table_association" "rt-associate-public-subnet-3" {
  subnet_id      = "${aws_subnet.public-subnet-3.id}"
  route_table_id = "${aws_route_table.public-route-table.id}"
}

resource "aws_route_table_association" "rt-associate-private-subnet-1" {
  subnet_id      = "${aws_subnet.private-subnet-1.id}"
  route_table_id = "${aws_route_table.private-route-table.id}"
}

resource "aws_route_table_association" "rt-associate-private-subnet-2" {
  subnet_id      = "${aws_subnet.private-subnet-2.id}"
  route_table_id = "${aws_route_table.private-route-table.id}"
}

resource "aws_route_table_association" "rt-associate-private-subnet-3" {
  subnet_id      = "${aws_subnet.private-subnet-3.id}"
  route_table_id = "${aws_route_table.private-route-table.id}"
}

resource "aws_route" "nat-gw-route" {
  route_table_id            = "${aws_route_table.private-route-table.id}"
  nat_gateway_id            = "${aws_nat_gateway.nat-gw.id}"
  destination_cidr_block    = "0.0.0.0/0"
}

resource "aws_route" "internet-gatewau-route" {
  route_table_id            = "${aws_route_table.public-route-table.id}"
  gateway_id                = "${aws_internet_gateway.igw.id}"
  destination_cidr_block    = "0.0.0.0/0"
}
