resource "aws_key_pair" "tf-key-pair" {
  key_name = "${var.env}-tf-key"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAUXLj8zp1SlEErMqjRqLP+IHoMcramronN6tb/6Zqu3 admin@DESKTOP-AFSF9SU"
}
resource "aws_instance" "tf_instance" {
  count = var.aws_ec2_count
  key_name = aws_key_pair.tf-key-pair.key_name
  instance_type = var.aws_ec2_type
  ami = "ami-0e2c8caa4b6378d8c"
  tags = {
    Name = "${var.env}-terra_ec2"
    Environment = var.env
  }
}