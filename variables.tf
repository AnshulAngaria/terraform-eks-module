
variable "cluster-name" {
  default = "terraform-eks-demo"
  type    = string
}

variable "instance_types" {
  default = "t2.micro"
  type = string
}