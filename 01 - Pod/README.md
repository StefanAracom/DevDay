## Perhaps a different driver is needed for MacOS/Windows
minikube start --driver docker --nodes 2

# Create namespace 
kubectl create namespace website

# Create Pod
kubectl -n website apply -f pod.yaml

# Check out Events
kubectl -n website get events --sort-by='.lastTimestamp'

# Explain
kubectl explain pod.spec.containers

# Describe 
kubectl -n website describe pod/website

# Logs
kubectl -n website logs pod/website

# Connect to Container (-i: interactive (keeps STDIN open) -t: allocates pseudo tty(teletype writer))
kubectl -n website exec -it website -- /bin/sh

# Port Forwarding
kubectl -n website port-forward pods/website 3000:3000

# Delete Pod
kubectl -n website delete -f pod.yaml
or
kubectl -n website delete pod/website

# JSONPath
kubectl -n website get pods -o=jsonpath='{.items[0].metadata.labels}'

# Access kubernetes API (via reverse Proxy)
kubectl proxy --port=8080 & 
curl http://localhost:8080/api/

