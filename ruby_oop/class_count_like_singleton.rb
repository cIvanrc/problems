class Dave

  @count = 0

  class << self
    attr_accessor :count
  end

  def initialize
    Dave.count+=1  
  end
end



puts "There are #{Dave.count} Dave objects out there"

d1 = Dave.new
d2 = Dave.new
d3 = Dave.new
d4 = Dave.new
d5 = Dave.new

puts "There are #{Dave.count} Dave objects out there"
