# terraform.tfvars
# Values for input variables

project_name = "trend-deployment"
environment  = "production"
aws_region   = "us-west-2"

vpc_cidr             = "10.0.0.0/16"
public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs = ["10.0.11.0/24", "10.0.12.0/24"]
availability_zones   = ["us-west-2a", "us-west-2b"]

cluster_name    = "trend-eks"
cluster_version = "1.31"

node_instance_type    = "t3.micro"
node_desired_capacity = 2
node_min_capacity     = 1
node_max_capacity     = 3