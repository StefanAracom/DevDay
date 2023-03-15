# pipelines.py

import mysql.connector


class MysqlPipeline:

    def __init__(self):
        self.conn = mysql.connector.connect(
            host='mysql-0.mysql.mysql.svc.cluster.local',
            user='root',
            password='devday',
            database='games'
        )

        ## Create cursor, used to execute commands
        self.cur = self.conn.cursor()

        ## Create quotes table if none exists
        self.cur.execute("""
        CREATE TABLE IF NOT EXISTS games(
            game_rank VARCHAR(30),
            game_score TEXT,
            game_title TEXT,
            game_release_date TEXT,
            game_summary TEXT,
            game_image_url TEXT,
            PRIMARY KEY (game_rank)
        )
        """)

    def process_item(self, item, spider):
        ## Define insert statement
        self.cur.execute(""" REPLACE INTO games (game_rank, game_score, game_title, game_release_date, game_summary, game_image_url) VALUES (%s,%s,%s,%s,%s,%s)""", (
            item["rank"],
            item["score"],
            item["title"],
            item["releaseDate"],
            item["summary"],
            item["imageUrl"],
        ))

        ## Execute insert of data into database
        self.conn.commit()

    def close_spider(self, spider):
        ## Close cursor & connection to database
        self.cur.close()
        self.conn.close()
