resource "aws_subnet" "public-subnet-1" {
  cidr_block        = "${var.public_subnet_1_cidr}"
  vpc_id            = "${aws_vpc.vpc.id}"
  availability_zone = "us-east-1a"

  tags {
      Name = "public-subnet-1"
  }

  lifecycle {
    prevent_destroy = false
  }
}

resource "aws_subnet" "public-subnet-2" {
  cidr_block        = "${var.public_subnet_2_cidr}"
  vpc_id            = "${aws_vpc.vpc.id}"
  availability_zone = "us-east-1b"

  tags {
      Name = "public-subnet-2"
  }

  lifecycle {
    prevent_destroy = false
  }
}

resource "aws_subnet" "public-subnet-3" {
  cidr_block        = "${var.public_subnet_3_cidr}"
  vpc_id            = "${aws_vpc.vpc.id}"
  availability_zone = "us-east-1c"

  tags {
      Name = "public-subnet-3"
  }

  lifecycle {
    prevent_destroy = false
  }
}

resource "aws_subnet" "private-subnet-1" {
  cidr_block        = "${var.private_subnet_1_cidr}"
  vpc_id            = "${aws_vpc.vpc.id}"
  availability_zone = "us-east-1a"

  tags {
      Name = "private-subnet-1"
  }

  lifecycle {
    prevent_destroy = false
  }
}

resource "aws_subnet" "private-subnet-2" {
  cidr_block        = "${var.private_subnet_2_cidr}"
  vpc_id            = "${aws_vpc.vpc.id}"
  availability_zone = "us-east-1b"

  tags {
      Name = "private-subnet-2"
  }

  lifecycle {
    prevent_destroy = false
  }
}

resource "aws_subnet" "private-subnet-3" {
  cidr_block        = "${var.private_subnet_3_cidr}"
  vpc_id            = "${aws_vpc.vpc.id}"
  availability_zone = "us-east-1c"

  tags {
      Name = "private-subnet-3"
  }

  lifecycle {
    prevent_destroy = false
  }
}
