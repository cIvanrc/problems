require 'nokogiri'


module ScrapingController

  class Scraping

    def initialize(document)
      @document = document
    end

    def dom
      @dom ||= Nokogiri::HTML @document
    end

    def iterate_dom(attr_dom, &block)
      dom.css(attr_dom).each do |node|
        yield node if block_given?
      end
    end

  end
end
