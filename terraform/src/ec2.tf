provider "aws" {
  region  = "ap-southeast-1"
}

resource "aws_key_pair" "deploy" {
  key_name    = "terraform-deploy"
  public_key  = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDHhtehEF5TCznOzwfv2i+2Ip3wIQwqbywwzBgpYL8gwEvwa5YjbJEc0bXBqkvTXIlTke2vMN02WHBCRdIMYznAb92teWLa7FE7OA9IGWbVuDW6Be0ln78TcoUPJw/HX//NXr6AKomO3yHSSRgPGEqPt8O80eI/3Qp6/ihFYPOm17Zk7sTcyDHd6e8nk24/V1v6VgiuJXHuYOLsWhAOiiYxZNBSvSR4xzqDhasx9Tfl7SomC8oiVtVtcy+sHod4oV0RcdjDLBNqbGLimsIviyYnj0gTCrGcBLb014Vbyha+ICV9KVS3Mmo9/Kcvf0hOU2R1tD9vaVe+8OQm0eNNZ+PFnuNSoK+uQWzo91m6TZt7GS9+aUeCZCpOTUAJWwVRfVDyydibt55O4kuC/nVCzTuLTVG3xWV+6AIW8G0L35hwnqdbOWWigmtnyh0homUl96g4OyflPQR/ylcZ2zRV/up/S8LsR/agvXXGmQZcaRW3ayCLuOJ+ZJeI6yx0BiP3ySM= chy1011@DESKTOP-CAPRDVN" 
}

resource "aws_instance" "k8s-master" {
  ami           = "ami-06fb5332e8e3e577a"
  instance_type = "t2.micro"

	key_name = "terraform-deploy"

  root_block_device {
   volume_size  = 20
  }

  tags = {
    Name  = "k8-master"
  }
}

output "public_ip" {
  description = "Public IP Address of created instance"
  value       = aws_instance.k8s-master.public_ip
}

output "public_dns" {
  description = "Public DNS of created instance"
  value       = aws_instance.k8s-master.public_dns
}

