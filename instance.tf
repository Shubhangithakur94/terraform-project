# this instance for public subnet

resource "aws_instance" "project-a" {
  ami                         = var.instance_ami_id
  instance_type               = "t2.micro"
  security_groups             = ["${aws_security_group.default_sg.id}"]
  subnet_id                   = aws_subnet.publicsubnets.id
  associate_public_ip_address = true
  tags = {
    Name = "public-instance"
  }
  user_data = file("script.sh")
}

# this instance for private subnet

resource "aws_instance" "project-b" {
  ami             = var.instance_ami_id
  instance_type   = "t2.micro"
  security_groups = ["${aws_security_group.default_sg.id}"]
  subnet_id       = aws_subnet.privatesubnets.id
  tags = {
    Name = "private-instance"
  }
}