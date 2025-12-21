resource "aws_instance" "web" {
  ami           = "ami-053b0d53c279acc90" # Ubuntu 22.04 us-east-1
  instance_type = "t3.micro"
  key_name      = "Devopsec"

  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = {cd
    Name = "DevSecOps-Web"
  }

  user_data = <<-EOF
    #!/bin/bash
    apt-get update -y
    apt-get install -y docker.io docker-compose git
    systemctl start docker
    systemctl enable docker
    usermod -aG docker ubuntu

    cd /home/ubuntu
    git clone https://github.com/Ronit-Waghambare/Solarv2.git
    cd Solarv2
    docker compose up -d
  EOF
}
