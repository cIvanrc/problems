# Create a website that displays:
# 1. All the videos from the scrapper for youtube from last lesson
#
# Create a website that displays:
# 1. The projects from lesson 3, mimic the output
#
# Create a website that displays:
# 1. All the members from Icalia at Github
# Notes:
# * You can use the github gem
# * Request with RestClient
# * Make as many classes as you need


require 'rack'

#app = Proc.new do |env|
    #['200', {'Content-Type' => 'text/html'}, ['A barebones rack app.']]
#end

#Rack::Handler::WEBrick.run app

require 'erb'
require 'github/markup'
require_relative '../scraping/scraping'

class Page
  include Scraping

  def render
    ERB.new(File.read('layout.erb')).result(binding)
  end

  def scrape
    @scrape ||= Scraping.new(get("https://www.youtube.com/"))    
  end

  def assign
    scrape.iterate_dom(".ytd-grid-video-renderer") do |node|
      #puts node.css("#details #meta #video-title").text
      puts "testu",node
    end
  end
  def content
    assign
    render do
      GitHub::Markup.render('site.md', File.read('site.md'))
    end
  end

end

webapp = -> (env) {
  ['200', {'Content-Type' => 'text/html'}, [ Page.new.content ] ]
}



# Rack::Handler::WEBrick
# Webrick Server
Rack::Handler::WEBrick.run webapp
