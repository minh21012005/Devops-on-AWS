variable "image_id" {
  type     = string
  nullable = false
}

variable "instance_type" {
  type     = string
  nullable = false
}

variable "key_name" {
  type        = string
  description = "name of the keypair"
  nullable    = false
}

variable "ec2_security_group_ids" {
  type        = list(string)
  description = "list of security group ids to associate with the EC2 instance"
  nullable    = false
}

variable "subnet_id" {
  type     = string
  nullable = false
}
