provider "aws" {
  region  = "ap-southeast-1"
}

resource "aws_key_pair" "deploy" {
  key_name    = "terraform-deploy"
  public_key  = " " 
}

resource "aws_instance" "example" {
  ami           = "ami-06fb5332e8e3e577a"
  instance_type = "t2.micro"

	key_name = "terraform-deploy"

  root_block_device {
   volume_size  = 20
  }
}
