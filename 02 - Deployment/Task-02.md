In the previous task we created two Pods with the same docker image with different names manually. This time however we want kubernetes to do the work.
1) Create a Deployment of the `nginx` image with 3 replicas.
2) Check if all Pods are running and check what happens if you delete one of the pods.
3) Create a Pod with the same selector as the one for the Deployment. What happens?