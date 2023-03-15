# Create Deployment
kubectl -n website apply -f deployment.yaml

# Connect to a Pod and request the other Pods by IP:PORT

# Install curl or wget
apk add curl

# Check /welcome page => Does not work without BE

# Scale up deployment
kubectl -n website scale deployment/website --replicas=5

# Rollback
kubectl rollout history deployment/website
kubectl rollout undo deployment/website --to-revision=2


