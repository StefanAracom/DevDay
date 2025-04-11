1) Create a Pod YAML file with the following docker image `nginx`
2) Create a namespace
3) Create the Pod
4) Check if the Pod is running via `kubectl -n $namespace get pods`
5) Connect to the Pod and check what's inside the container via `kubectl -n $namespace exec -it $podName -- /bin/sh`
6) Create another Pod with the same YAML file (Hint: There is a small change you need to do to make it work)
7) Check if both Pods are running with `kubectl -n $namespace get pods`
8) Create the Pod in the 01 - Pod Directory 
9) Access the Pod via IP with curl or any other tool outside of the cluster and inside of the Pod you created in 3) 
10) Delete all Pods and all namespaces you created (Be careful not delete anything not created by you)
11) Stop minikube `minikube stop`