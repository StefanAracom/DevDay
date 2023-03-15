import scrapy


class GamesSpider(scrapy.Spider):
    name = 'games'  # spider name
    # the url to crawl
    start_urls = [
        'https://www.metacritic.com/browse/games/score/metascore/all/pc/filtered?sort=desc',
    ]

    def parse(self, response):
        tables_block = response.xpath('//table')  # get all tables
        for table in tables_block:
            table_data = table.xpath('tr[not(@class)]')
            for data in table_data:
                summary = data.xpath('td[@class="clamp-summary-wrap"]')
                yield {
                    'rank': summary.xpath('span[@class="title numbered"]/text()').get().strip(),
                    'score': summary.xpath('div[@class="clamp-score-wrap"]/a/div/text()').get(),
                    'title': summary.xpath('a[@class="title"]/h3/text()').get(),
                    'releaseDate': summary.xpath('div[@class="clamp-details"]/span/text()').get(),
                    'summary': summary.xpath('div[@class="summary"]/text()').get().strip(),
                    'imageUrl': data.xpath('td[@class="clamp-image-wrap"]/a/img/@src').get(),
                }
