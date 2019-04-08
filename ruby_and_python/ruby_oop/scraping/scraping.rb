require_relative 'request_controller'
require_relative 'scraping_controller'


module Scraping
  include RequestController
  include ScrapingController 
end
