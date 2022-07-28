provider "aws" {
  region     = "ap-south-1"
  }

resource "aws_instance" "terraform-instance" {
	instance_type = "t2.micro"
	ami = "ami-05c8ca4485f8b138a"
	key_name = "july1"
	tags = {
			Name = "terraform-ec2"
	}
}
