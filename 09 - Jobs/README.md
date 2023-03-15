# Create CronJob
kubectl create ns crawler
kubectl apply -f .

# Have a look at one of the job logs
kubectl -n crawler logs $POD 

# Check mysql database
kubectl -n mysql exec -it mysql-0 -- /bin/sh
mysql
USE games;
SELECT * FROM games;
