# Trend Deployment - AWS EKS Cluster

This repository contains Terraform code for provisioning an Amazon EKS cluster and its associated infrastructure (VPC, Subnets, IAM roles, Security Groups) on AWS for the "Trend Deployment" project.

## Requirements

- Terraform >= 1.5.0
- AWS CLI configured with proper IAM permissions
- `kubectl` installed to interact with the cluster
- `eksctl` (optional, for additional EKS management)

## Deployment Instructions

To deploy the infrastructure, run the following commands:

```bash
# Initialize the Terraform workspace
terraform init

# Plan the deployment to see the proposed changes
terraform plan

# Apply the changes to create the infrastructure
terraform apply -auto-approve
```

## Verification Instructions

After deployment, you can verify the infrastructure using the following commands:

### 1. Update kubeconfig
Configure `kubectl` to use your new cluster:
```bash
aws eks update-kubeconfig --region us-west-2 --name trend-eks
```

### 2. Verify with kubectl
Check the status of your nodes:
```bash
kubectl get nodes
```
Check the cluster-info:
```bash
kubectl cluster-info
```

### 3. Verify with AWS CLI
Check the cluster status:
```bash
aws eks describe-cluster --region us-west-2 --name trend-eks --query "cluster.status"
```
Check the node group status:
```bash
aws eks describe-nodegroup --region us-west-2 --cluster-name trend-eks --nodegroup-name "Trend Deployment-node-group" --query "nodegroup.status"
```

### 4. Verify with eksctl (if installed)
```bash
eksctl get cluster --region us-west-2 --name trend-eks
eksctl get nodegroup --region us-west-2 --cluster trend-eks
```
