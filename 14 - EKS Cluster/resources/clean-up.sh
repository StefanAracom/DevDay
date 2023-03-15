# Clean Up

# Delete all resources which were created via kubectl
kubectl -n mysql delete secret/db-secret
kubectl -n crawler delete cronjob/crawler

# Delete all helm releases
helm -n kube-system delete aws-ebs-csi-driver
helm -n mysql delete mysql
helm -n backend delete backend
helm -n website delete website

# Delete all PV(C)
kubectl -n mysql delete pvc/data-mysql-0
kubectl delete pv --all
