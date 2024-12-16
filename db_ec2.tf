resource "aws_instance" "db_server" {
  ami           = "ami-0327f51db613d7bd2"
  instance_type = "t2.micro"
  key_name      = "priii"
  subnet_id     = aws_subnet.private_subnet.id
  vpc_security_group_ids = [aws_security_group.db_server_sg.id]

  tags = {
    Name = "DBServer"
  }
}