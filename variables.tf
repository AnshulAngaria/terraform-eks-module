
variable "cluster-name" {
  default = "terraform-eks-demo"
  type    = string
}

variable "instance_types" {
  default = "t2.micro"
  type = string
}

variable "node_group_name" {
  default = "eks-node-group"
  type = string
}

variable "region" {
  default     = "ap-south-1"
  type = string
  description = "Region"
}

variable "credentials_file" {
  default = "~/.aws/credentials"
  type = string
}

variable "credentials_profile" {
  default = "default"
  type = string
}

variable "node_group_ami" {
  default = "AL2_x86_64"
  type = string
}