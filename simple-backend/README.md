docker build -t simple-backend .

docker run --net=host --name games-backend -td simple-backend

docker exec -it games-backend /bin/sh

curl http://localhost:8080/welcome
