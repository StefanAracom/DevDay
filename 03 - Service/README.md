# Create Deployments and Service
kubectl apply -f .

# Port-Forwarding
kubectl -n website port-forward $POD 3000:3000 

# Check via nslookup
nslookup $IP

# Check out NodePort
minikube -n backend service backend-service
