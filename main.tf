provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

resource "aws_instance" "ec2" {
  ami           = "ami-0c2b8ca1dad447f8a"
  instance_type = "t2.micro"
  tags = {
    Name = "Changed Name"
  }
}
