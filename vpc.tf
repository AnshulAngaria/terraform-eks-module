

resource "aws_vpc" "demo" {
  cidr_block = "10.0.0.0/16"

  tags = {
    "Name"="terraform-eks-demo-node",
    "kubernetes.io/cluster/${var.cluster-name}"="shared",
  }
}

