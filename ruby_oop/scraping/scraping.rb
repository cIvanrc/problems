require './request_controller'
require './scraping_controller'


module Scraping
  include RequestController
  include ScrapingController 
end
