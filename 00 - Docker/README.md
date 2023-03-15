# See backend, crawler, simple-backend and website 
cd ../website
docker build -t stevearacom/website .
docker run -d -p 3000:3000 --name website stevearacom/website
docker exec -it website /bin/sh

# Useful commands
docker ps
docker images

docker stop $(docker ps -aq)
docker rm -f $(docker ps -aq)
docker rmi -f $(docker images -aq)

# Prometheus, Grafana Example
bash prom.sh

echo "some_metric 3.14" | curl --data-binary @- http://localhost:9091/metrics/job/some_job

curl -X PUT http://localhost:9091/api/v1/admin/wipe
