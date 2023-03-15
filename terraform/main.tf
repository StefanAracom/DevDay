provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "example" {
  ami = "ami-0d527b8c289b4af7f"
  instance_type = "t2.micro"
  tags = {
    Name = "Example"
  }
}
