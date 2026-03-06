variable "region" {
  type    = string
  default = "ap-southeast-1"
}

variable "availability_zone_1" {
  type     = string
  nullable = false
}

variable "availability_zone_2" {
  type     = string
  nullable = false
}

variable "cidr_block" {
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

variable "instance_type" {
  type        = string
  description = "Type of EC2 instance to launch. Example: t2.micro"
  default     = "t3.micro"
}

variable "amis" {
  type = map(any)
  default = {
    "ap-southeast-1" : "ami-0e4b5d31e60aa0acd"
    "ap-northeast-1" : "ami-0dfa284c9d7b2adad"
  }
}

variable "key_pair_path" {
  type    = string
  default = "./keypair/udemy-key.pub"
}
