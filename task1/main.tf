resource "aws_vpc" "Myvpc" {
  cidr_block       = var.Myvpc_cidr
  instance_tenancy = "default"
  tags = {
    Name = "Myvpc"
  }

}

resource "aws_subnet" "subnets" {
  count             = length(var.My_subnets_cidrs)
  vpc_id            = aws_vpc.Myvpc.id
  cidr_block        = var.My_subnets_cidrs[count.index]
  availability_zone = "${var.region}${var.My_az_subnets[count.index]}"
  tags = {
    Name = var.My_az_subnets[count.index]
  }

}
