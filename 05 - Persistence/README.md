# Create PV, PVC and Deployment
kubectl apply -f .

# Connect to container
kubectl -n website exec -it $POD -- /bin/sh

# Creates /data directory in minikube container. Normally this needs to be provided by ClusterProvider

# ReadWriteOnce -> Can be accessed by multiple pods if on the same node
