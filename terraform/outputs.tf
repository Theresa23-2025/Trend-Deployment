# outputs.tf
# Output values from the Terraform execution

output "cluster_name" {
  description = "The name of the EKS cluster"
  value       = aws_eks_cluster.main.name
}

output "cluster_endpoint" {
  description = "Endpoint for the EKS cluster control plane"
  value       = aws_eks_cluster.main.endpoint
}

output "cluster_arn" {
  description = "The Amazon Resource Name (ARN) of the cluster"
  value       = aws_eks_cluster.main.arn
}

output "node_group_name" {
  description = "The name of the node group"
  value       = aws_eks_node_group.main.node_group_name
}

output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "The IDs of the public subnets"
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "The IDs of the private subnets"
  value       = aws_subnet.private[*].id
}

output "security_group_id" {
  description = "The ID of the EKS cluster security group"
  value       = aws_security_group.eks_cluster.id
}