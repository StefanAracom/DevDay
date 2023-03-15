FROM python:3.9.16

WORKDIR /app

RUN pip install scrapy mysql-connector-python

COPY . /app

CMD ["scrapy",  "crawl", "games"]
