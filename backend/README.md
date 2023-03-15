docker build -t backend .

docker run --net=host --name games-backend -td backend

docker exec -it games-backend /bin/sh

curl http://localhost:8080/games
