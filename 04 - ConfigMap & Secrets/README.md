# Create ConfigMap and Deployment for website
cd ConfigMap/
kubectl apply -f .

# Create Secret and Deployment for simple-backend
cd ../Secrets

# Connect to containers and echo out Environment Variables
echo $BACKEND_SERVICE

echo $DB_USERNAME
echo $DB_PASSWORD

# Check /config in website container
