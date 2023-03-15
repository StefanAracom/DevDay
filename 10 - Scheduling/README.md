# Show Label of nodes
kubectl get nodes --show-labels

# NodeSelector
kubectl get nodes

kubectl label node $name devday=awesome

kubectl apply -f deployment.yaml

kubectl label node $name devday-

# NodeAffinity
kubectl label node $name devday=awesome

kubectl apply -f deployment.yaml

kubectl label node $name devday-

# Taints & Tolerations
kubectl taint node $name devday=awesome:NoSchedule

kubectl apply -f .
