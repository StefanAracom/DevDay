kubectl get nodes

kubectl cordon $node

kubectl drain --force --ignore-daemonsets --delete-emptydir-data $node
