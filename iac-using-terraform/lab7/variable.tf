variable "region" {
  type    = string
  default = "ap-southeast-1"
}

variable "availability_zones" {
  type     = list(string)
  nullable = false
}

variable "vpc_cidr" {
  type     = string
  nullable = false
}

variable "public_subnet_ips" {
  type     = list(string)
  nullable = false
}

variable "private_subnet_ips" {
  type     = list(string)
  nullable = false
}

variable "vpc_name" {
  type     = string
  nullable = false
}
