kubectl get nodes

kubectl cordon $node

kubectl drain --force --ignore-daemonsets $node
