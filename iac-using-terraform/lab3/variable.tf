variable "image_id" {
  type        = string
  description = "The id of the image to use for the instance"
}

variable "instance_type" {
  type        = string
  description = "The type of instance to create"
  default     = "t3.micro"
}

variable "region" {
  type    = string
  default = "ap-southeast-1"
}

variable "amis" {
  type = map(any)
  default = {
    "ap-southeast-1" : "ami-0ac0e4288aa341886"
    "ap-northeast-1" : "ami-088103e734f7e0529"
  }
}
