#variables here for ami
variable "instance_ami_id"{
    type = string
    default = "ami-09de362f44ba0a166"
}


#variable for access key
variable "aws_access_key"{
    type = string
    default = "AKIAUBFP5CO33GSJUP3S"
}
#AKIAUBFP5CO33GSJUP3S

#variable for secret key
variable "aws_secret_key" {
    type = string
    default = "X8NBFtZPAUL+SRcugYa8lLSLO2ZiQz5nH10i5SDS"
  
}
#X8NBFtZPAUL+SRcugYa8lLSLO2ZiQz5nH10i5SDS


#variable for vpc
variable "vpc_id" {
    type = string
    default = "vpc-0be5965e9c47e6f53"
  
}

#variable for public subnet
variable "cidr_public_subnet" {
    type = string
    default = "172.31.80.0/20"
  
}


#varible for private subnet
variable "cidr_private_subnet" {
    type = string
    default = "172.31.96.0/20"
  
}