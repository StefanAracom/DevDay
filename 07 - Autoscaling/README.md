# Metric Server:
kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
For minikube: minikube addons enable metrics-server 

# Create all k8s resources
kubectl apply -f .

# Scale up deployment
kubectl -n backend scale backend --replicas=5

# Watch HPA
kubectl -n backend get hpa --watch
