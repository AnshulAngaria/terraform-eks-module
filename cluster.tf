resource "aws_eks_cluster" "eks_cluster" {
  name     = var.cluster-name
  role_arn = aws_iam_role.cluster_role.arn

  vpc_config {
    security_group_ids = [aws_security_group.cluster_sg.id]
    subnet_ids         = aws_subnet.demo[*].id
  }

  depends_on = [
    aws_iam_role_policy_attachment.cluster_role-AmazonEKSClusterPolicy,
    aws_iam_role_policy_attachment.cluster_role-AmazonEKSServicePolicy,
  ]
}
