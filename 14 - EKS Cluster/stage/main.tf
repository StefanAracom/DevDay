# Community modules can also be used instead: https://registry.terraform.io/namespaces/terraform-aws-modules
module "eks-cluster" {
  source = "../eks-module"

  region                   = "eu-central-1"
  availability_zones_count = 2
  project                  = "DevDay"
  vpc_cidr                 = "10.0.0.0/16"
  subnet_cidr_bits         = 8
}

output "cluster_name" {
  value = module.eks-cluster.cluster_name
}

output "cluster_endpoint" {
  value = module.eks-cluster.cluster_endpoint
}

output "cluster_ca_certificate" {
  value = module.eks-cluster.cluster_ca_certificate
}

output "eks_cluster_autoscaler_arn" {
  value = module.eks-cluster.eks_cluster_autoscaler_arn
}
