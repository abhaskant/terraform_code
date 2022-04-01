provider "aws" {
   region = "us-east-1a"
}
 
resource "aws_instance" "intro" {
  ami                    = "ami-04505e74c0741db8d"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  key_name               = "terraf123"
  vpc_security_group_ids = ["sg-0ff6dd1ac4802860c"]

  tags = {
    Name = "tempfirstterra"
  }
}
