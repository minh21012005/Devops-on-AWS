variable "region" {
  type    = string
  default = "ap-southeast-1"
}

variable "keypair_path" {
  type     = string
  default  = "./keypair/udemy-key.pub"
  nullable = false
}

variable "amis" {
  type = map(any)
  default = {
    "ap-southeast-1" : "ami-0ac0e4288aa341886"
    "ap-northeast-1" : "ami-088103e734f7e0529"
  }
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}
