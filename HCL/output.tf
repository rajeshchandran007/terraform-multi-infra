output "ec2_public_ip" {
  value = aws_instance.tf_instance.public_ip
}

output "ec2_instance_state" {
  value = aws_instance.tf_instance.instance_state
}  