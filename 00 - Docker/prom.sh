docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker run --name pushgateway -d -p 9091:9091 prom/pushgateway --web.enable-admin-api
docker run --name prometheus -d -p 9090:9090 -v ~/Dokumente/Vortrag/00\ -\ Docker/prometheus.yml:/etc/prometheus/prometheus.yml prom/prometheus
docker run -d --name=grafana -p 3000:3000 grafana/grafana

