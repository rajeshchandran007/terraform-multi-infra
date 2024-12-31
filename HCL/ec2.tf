resource "aws_instance" "tf_instance" {
  instance_type = "t2.micro"
  ami = "ami-0e2c8caa4b6378d8c"
  tags = {
    Name = "terra_instance1"
  }
}