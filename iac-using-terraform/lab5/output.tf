output "instance_ip_addr_public" {
  value = module.compute.instance_ip_address_public
}

output "instance_ip_addr_private" {
  value = module.compute.instance_ip_address_private
}

output "public_security_group_id" {
  value = module.security.public_security_group_id
}
output "private_security_group_id" {
  value = module.security.private_security_group_id
}
