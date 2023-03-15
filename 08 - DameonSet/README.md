# Create Daemonset
kubectl create ns monitoring
kubectl apply -f .

# Connect to container and check /host for monitoring data of nodes
