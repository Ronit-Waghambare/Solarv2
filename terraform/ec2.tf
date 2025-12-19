resource "aws_instance" "web" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.micro"
  key_name      = "Devopsec"

  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = {
    Name = "DevSecOps-Web"
  }
}
