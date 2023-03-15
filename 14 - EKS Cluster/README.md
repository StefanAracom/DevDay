# Setup Cluster (Create AWS Environment Variables - aws_access_key + aws_secret_key)
cd stage/
terraform init
terraform plan
terraform apply

# Access cluster (cluster_name from terraform output)
aws configure
aws eks update-kubeconfig --name DevDay-cluster

# Destroy resources (It can be that you need to destroy all k8s resources first)
terraform destroy
