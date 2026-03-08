variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "availability_zones" {
  type = list(any)
}

variable "public_subnet_ips" {
  description = "List of CIDR blocks for public subnets"
  type        = list(any)
}

variable "private_subnet_ips" {
  description = "List of CIDR blocks for private subnets"
  type        = list(any)

}
