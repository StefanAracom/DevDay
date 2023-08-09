# Crate StatefulSet, Service and ConfigMap
kubectl apply -f .

# Check Storage Class
kubectl get storageclass

# Connect to container
kubectl -n mysql exec -it mysql-0 -- /bin/sh

mysql

CREATE DATABASE games;

# Check other containers
kubectl -n mysql exec -it mysql-1 -- /bin/sh

