# AWS EC2 Instance Type
variable "instance_type" {
  description = "EC2 Instance type"
  type = string
  default = "t2.micro"
}

# AWS EC2 Instance Key PAir
variable "instance_keypair" {
  description = "EC2 Key pair"
  type = string
  default = "angular"
}

# AWS EC2 Instance Count
variable "private_instance_count" {
  description = "AWS EC2 Private Instances Count"
  type = number
  default = 1
}


