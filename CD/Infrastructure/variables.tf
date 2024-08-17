variable "region" {
  default = "eu-north-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "availability_zone" {
  default = "eu-north-1a"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "deployer-key"
}