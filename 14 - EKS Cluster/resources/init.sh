# Add repositories
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo add aws-ebs-csi-driver https://kubernetes-sigs.github.io/aws-ebs-csi-driver
helm repo update

# Csi Driver for dynamic volume provisioning
helm upgrade --install aws-ebs-csi-driver --namespace kube-system aws-ebs-csi-driver/aws-ebs-csi-driver

# Mysql
kubectl create namespace mysql --dry-run=client -o yaml | kubectl apply -f -
kubectl apply -f mysql/secret.yaml
helm upgrade --install --version 9.6.0 -n mysql -f mysql/values.yaml mysql bitnami/mysql

# Website
helm  upgrade --install --create-namespace -n website -f website/values.yaml website chart

# Crawler - CronJob
kubectl create namespace crawler --dry-run=client -o yaml | kubectl apply -f -
kubectl apply -f crawler/cronjob.yaml

# Backend
helm  upgrade --install --create-namespace -n backend -f backend/values.yaml backend chart
