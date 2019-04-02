# Exercise 02
# Please don't write any of the code for this exercise in this file, use a separate script to run the main program
# and separate files for the classes.
# The second part for this practice is to scrape https://news.ycombinator.com
# 1. Use a class to represent the scraping client (you may call it Scraper or ScrapingClient for simplicity). Ideally this class should not be instantiated (figure out what that means in terms of the method types and how you should call them).
# 2. Use a class to represent the independent article or story, storing only the information YOU would like to keep from what is shown on the front page ONLY.
# 3. Use any other classes you think may be useful to represent some of the more complex dependencies that will be aggregated to the article or story class above (in other words, the compound attributes of the article/story class).
# 4. Write a script (`hacker_news_scraper.rb`) that uses the Scraper to read HTML from [Hacker News](https://news.ycombinator.com) and parse it into instances of your custom class and then reports the top 15 stories into a CSV file (with headings).e



require './scraping'
require './article'


class HackerNews
  include Scraping
  
  attr_reader :articles
  def initialize(url)
    @url = url
    @articles = []
  end

  def scrape
    @scrape ||= Scraping.new(get(@url))    
  end

  def assign(attr_dom)
    scrape.iterate_dom(attr_dom) do |node|
      #puts node.css(".title .storylink").text
      article = Article.new
      article.title = node.css(article.title_node).text
      article.autor = node.css(article.autor_node).text
      article.rank = node.css(article.rank_node).text

      @articles << article

      article.to_csv
    end
  end
end


tmp = HackerNews.new("https://news.ycombinator.com")
tmp.assign('.itemlist .athing')
tmp.articles.each { |article| puts article }
