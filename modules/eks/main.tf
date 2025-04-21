resource "aws_eks_cluster" "cluster" {
  name     = var.cluster_name
  role_arn  = var.cluster_role_arn
  version   = "1.30"

  vpc_config {
    subnet_ids = var.subnet_ids
  }

  tags = {
    Name = "EKS Cluster"
  }
}

resource "aws_eks_node_group" "node_group" {
  cluster_name    = aws_eks_cluster.cluster.name
  node_group_name = "eks-node-group"
  node_role_arn   = var.node_role_arn
  subnet_ids      = var.subnet_ids

  scaling_config {
    desired_size = 2
    max_size     = 3
    min_size     = 1
  }

  instance_types = ["t3.small"]

  tags = {
    Name = "eks-node-group"
  }
}
