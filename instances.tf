resource "aws_instance" "frontend" {
  ami                         = "ami-08c40ec9ead489470"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.public_subnet.id
  associate_public_ip_address = true
  key_name                    = "task"
  vpc_security_group_ids      = [aws_security_group.frontend_sg.id]

  tags = {
    Name = "frontend_instance"
  }
}

resource "aws_instance" "backend" {
  ami                         = "ami-08c40ec9ead489470"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.public_subnet_2.id
  associate_public_ip_address = true
  key_name                    = "task"
  vpc_security_group_ids      = [aws_security_group.backend_sg.id]

  tags = {
    Name = "backend_instance"
  }
}
