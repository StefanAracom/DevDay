docker build -t devday/crawler .

docker run --net=host --name games-crawler -td devday/crawler

docker exec -it games-crawler /bin/sh
