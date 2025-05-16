Pods can be terminated because of resource restriction or crashes. So it's not a good idea to access pods directly and rather use a service.
1) Create a service from type ClusterIP. Use the pods from 1) as selectors.
2) Check the IP of the service, exec into one of the pods and do `nslookup $ip`. This should give you the DNS for the service.
3) Open up logs to all Pods in different terminals and while you're still in one of the pods try to curl to the DNS multiple times. What do you notice in the logs?
4) Create a NodePort Service for the pods in 1) Try to call them outside one of the pods.

You can even create services for external web pages via External Name Service
5) Create an External Name Service for https://aracom.de/.
6) Do 5) for the new service and try to curl inside one of the pods to the DNS of this service.