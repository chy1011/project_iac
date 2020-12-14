provider "aws" {
  region  = "ap-southeast-1"
}

resource "aws_key_pair" "deploy" {
  key_name    = "terraform-deploy"
  public_key  = "" 
}

resource "aws_instance" "containerd-k8s-master" {
  ami           = "ami-06fb5332e8e3e577a"
  instance_type = "m5a.large"

	key_name = "terraform-deploy"

  root_block_device {
   volume_size  = 20
  }

  tags = {
    Name  = "k8-master"
  }
}

resource "aws_instance" "containerd-k8s-worker" {
  ami           = "ami-06fb5332e8e3e577a"
  instance_type = "m5a.large"

	key_name = "terraform-deploy"

  root_block_device {
   volume_size  = 20
  }

  tags = {
    Name  = "containerd-k8s-worker"
  }
}

output "master_public_ip" {
  description = "Public IP Address of created instance"
  value       = aws_instance.containerd-k8s-master.public_ip
}

output "master_public_dns" {
  description = "Public DNS of created instance"
  value       = aws_instance.containerd-k8s-master.public_dns
}

output "worker_public_ip" {
  description = "Public IP Address of created instance"
  value       = aws_instance.containerd-k8s-worker.public_ip
}

output "worker_public_dns" {
  description = "Public DNS of created instance"
  value       = aws_instance.containerd-k8s-worker.public_dns
}
