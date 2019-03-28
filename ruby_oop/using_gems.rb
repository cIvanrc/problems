#This practice will break into two parts:
# 1. Parsing a remote README file from github and save it into a HTML file
#  1.1. Use the github-markup
#  1.2 Look for open-uri for reading external pages of you can use RestClient or even better HTTParty
# 2. Create class and objects for the following JSON pages: YOU MUST USE HTTPARTY
#  2.2. http://sepomex.icalialabs.com/api/v1/zip_codes/
#  2.3. http://sepomex.icalialabs.com/api/v1/states/
#  2.4. http://sepomex.icalialabs.com/api/v1/cities/
#  2.5 Each class should be able to fetch records with simple methods, look for the example class, at least 3 classes should be created,
#      but you can be as creative as you want

# ======
# Example class for practice 2
#

module Rest
  require 'rest-client'
  require 'json'
  require 'github/markup'

  def self.get(url)
    RestClient.get url
  end
  
  def self.parse(raw)
    JSON.parse raw
  end

  def self.params(url, params)
    RestClient.get url, params: params
  end

end

class Markup
  extend Rest

  def self.generate(url)
    @url = url
    html
  end

  private

  def self.html
    file = File.new("tmp.html", "w")
    file.write html_markup
    file.close
  end

  def self.html_markup
    github_markup( Rest::get(@url) )
  end

  def self.github_markup(data)
    GitHub::Markup.render('README.md', data )
  end
end

Markup.generate("https://raw.githubusercontent.com/IcaliaLabs/sepomex/master/README.md")

module Sepomex
  #extend Rest

  def self.zip_codes_url
    "http://sepomex.icalialabs.com/api/v1/zip_codes"
  end

  def self.zip_codes
    @zip_codes = Rest::get zip  
  end

  def self.states
    @states = Rest::get "http://sepomex.icalialabs.com/api/v1/states/" 
  end

  def self.cities
    @citites = Rest::get "http://sepomex.icalialabs.com/api/v1/cities/"
  end
end


class ZipCode
  #include Sepomex

  attr_accessor :id, :d_codigo, :d_asenta, :d_tipo_asenta, :d_mnpio, :d_estado, :d_ciudad, :d_cp, :c_estado, :c_oficina, :c_cp, :c_tipo_asenta, :c_mnpio, :id_asenta_cpcons, :d_zona, :c_cve_ciudad
  def initialize
    @id = nil
    @d_codigo = nil
    @d_asenta = nil
    @d_tipo_asenta = nil
    @d_mnpio = nil
    @d_estado = nil
    @d_ciudad = nil
    @d_cp = nil
    @c_estado = nil
    @c_oficina = nil
    @c_cp = nil
    @c_tipo_asenta = nil
    @c_mnpio = nil
    @id_asenta_cpcons = nil
    @d_zona = nil
    @c_cve_ciudad
    
  end

  def self.all_zip_codes
    Rest::parse(Sepomex::zip_codes)["zip_codes"] 
  end

  def self.all
    @all ||= (all_zip_codes).map do |zip|
      zip_code = ZipCode.new
      
      zip_code.id = zip["id"] 
      zip_code.d_codigo = zip["d_codigo"]
      zip_code.d_asenta = zip["d_asenta"]
      zip_code.d_tipo_asenta = zip["d_tipo_asenta"]
      zip_code.d_mnpio = zip["d_mnpio"]
      zip_code.d_estado = zip["d_estado"]
      zip_code.d_ciudad = zip["d_ciudad"]
      zip_code.d_cp = zip["d_cp"]
      zip_code.c_estado = zip["c_estado"]
      zip_code.c_oficina = zip["c_oficina"]
      zip_code.c_cp = zip["c_cp"]
      zip_code.c_tipo_asenta = zip["c_tipo_asenta"]
      zip_code.c_mnpio = zip["c_mnpio"]
      zip_code.id_asenta_cpcons = zip["id_asenta_cpcons"]
      zip_code.d_zona = zip["d_zona"]
      zip_code.c_cve_ciudad = zip["c_cve_ciudad"]

      zip_code
    end
  end

  def self.find(id)
    all.find { |zip_code| zip_code.id == id }
  end

  def self.where(condition)
    #@condition = condition
    Rest::params(Sepomex::zip_codes_url, condition)
  end

  #def self.make_condition
    #@condition.map { |key, val| "#{key}=#{join_word val}" }.join(" -d ")
    #@condition.transform_values(&:upcase)
  #end

  #def self.join_word(str)
    #str.split(" ").join("%20")
  #end
  #def initialize; end
  #def self.all; end
  #def self.find(id); end
  #def self.where(conditions); end
  #def self.find_by(condition); end
end

##tested
#puts ZipCode.all
#ZipCode.all.each { |a| p a }
#puts ZipCode.find(1).d_codigo
#puts ZipCode.where(city: "guadalupe", state: "nuevo leon")
#------------

#puts z.all_zip_codes[0]
#z.all.each { |zip| p zip  }
#puts z.find(1).d_codigo
#puts z.where("id == 1").d_codigo

#ZipCode.all # => Returns an array of ZipCode instances
#ZipCode.find(2)# => Returns an instance of ZipCode with id 2
#ZipCode.where(conditions) # => Returns an array of ZipCode instances meeting the conditions
#ZipCode.find_by(condition) # => Returns an instance of ZipCode meeting the condition
