Run locally:
yarn install
yarn dev

docker build -t website .

docker run --net=host --name games-website -td website

docker exec -it games-website /bin/sh

curl http://localhost:8080
