variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "public_cidr_block" {
  description = "The CIDR block for the public subnet"
  type        = string
}

variable "public_cidr_block_1" {
  description = "The CIDR block for the public subnet"
  type        = string
}

variable "public_availability_zone" {
  description = "The availability zone for the public subnet"
  type        = string
}

variable "public_availability_zone_1" {
  description = "The availability zone for the one more public subnet"
  type        = string
}

variable "private_cidr_block" {
  description = "The CIDR block for the private subnet"
  type        = string
}

variable "private_availability_zone" {
  description = "The availability zone for the private subnet"
  type        = string
}

variable "db_cidr_block" {
  description = "The CIDR block for the DB subnet"
  type        = string
}

variable "db_availability_zone" {
  description = "The availability zone for the DB subnet"
  type        = string
}
