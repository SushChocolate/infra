variable "region" {
  type = string
  default = "eu-west-1"
}

variable "vpc_cidr_block" {
  type = string
  default = "172.31.0.0/16"
}

# Public Subnet Variables
variable "public_subnet_cidr_block_a" {
  type = string
  default = "10.80.0.0/28"
}

variable "public_subnet_cidr_block_b" {
  type = string
  default = "10.80.0.16/28"
}

variable "public_subnet_cidr_block_c" {
  type = string
  default = "10.80.0.32/28"
}

# Private Subnet Variables
variable "private_subnet_cidr_block_a" {
  type = string
  default = "10.80.0.64/28"
}

variable "private_subnet_cidr_block_b" {
  type = string
  default = "10.80.0.80/28"
}

variable "private_subnet_cidr_block_c" {
  type = string
  default = "10.80.0.96/28"
}

variable "instance_count" {
  type = number
  default = 1
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "public_subnets" {
  type = list(string)
  description = "list of public subnets"
  default = [ "10.80.0.0/28", "10.80.0.16/28", "10.80.0.32/28" ]
}

variable "private_subnets" {
  type = list(string)
  description = "list of private subnets"
  default = [ "10.80.0.64/28", "10.80.0.80/28", "10.80.0.96/28" ]
}

# 172.31.0.0/16 = 128 IP's : VPC CIDR Block - (eu-west-) - Ireland - 3 AZ's (1a,1b,1c)

# 64 - public subnet blocks - 10.0.0.0/26
#   16 - "10.80.0.0/28" 16  - eu-west-1a
#   16 - "10.80.0.16/28" 32 - eu-west-1b
#   16 - "10.80.0.32/28" 48 - eu-west-1c
#   16 - "10.80.0.48/28" 64 - eu-west-1a

# 64 - private subnet blocks - 10.0.0.64/26
#   16 - "10.80.0.64/28" 80 - eu-west-1a
#   16 - "10.80.0.80/28" 96 - eu-west-1b
#   16 - "10.80.0.96/28" 112 - eu-west-1c
#   16 - "10.80.0.112/28" 128 - eu-west-1a
