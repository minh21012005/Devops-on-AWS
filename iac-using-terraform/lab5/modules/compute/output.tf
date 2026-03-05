output "instance_ip_address_public" {
  value = aws_eip.demo-eip.public_ip
}

output "instance_ip_address_private" {
  value = aws_instance.demo-instance.private_ip
}
