variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_cidr_block" {
  description = "The CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_cidr_block_1" {
  description = "The CIDR block for the public subnet"
  type        = string
  default     = "10.0.4.0/24"
}

variable "public_availability_zone" {
  description = "The availability zone for the public subnet"
  type        = string
  default     = "eu-west-2a"
}

variable "public_availability_zone_1" {
  description = "The availability zone for the public subnet"
  type        = string
  default     = "eu-west-2b"
}

variable "private_cidr_block" {
  description = "The CIDR block for the private subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "private_availability_zone" {
  description = "The availability zone for the private subnet"
  type        = string
  default     = "eu-west-2b"
}

variable "db_cidr_block" {
  description = "The CIDR block for the DB subnet"
  type        = string
  default     = "10.0.3.0/24"
}

variable "db_availability_zone" {
  description = "The availability zone for the DB subnet"
  type        = string
  default     = "eu-west-2c"
}

variable "db_password" {
  description = "Password for db user"
  type        = string
}


variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "cluster_role_arn" {
  description = "The ARN of the EKS cluster role"
  type        = string
}

variable "node_role_arn" {
  description = "The ARN of the EKS node role"
  type        = string
}
