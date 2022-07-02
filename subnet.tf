# public subnet code here 
# Creating Public Subnet

resource "aws_subnet" "publicsubnets" { 
  vpc_id            = var.vpc_id
  cidr_block        = var.cidr_public_subnet
  availability_zone = "ap-south-1a"
  tags = {
    Name = "public_subnet"
  }
}



# private subnet code here
# Creating Public Subnet
resource "aws_subnet" "privatesubnets" { 
  vpc_id            = var.vpc_id
  cidr_block        = var.cidr_private_subnet
  availability_zone = "ap-south-1a"
  tags = {
    Name = "private_subnet"
  }
}