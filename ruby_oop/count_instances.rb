class Person
  @@count = 0
  def initialize(name , height)
    @name = name
    @height = height
    @@count+=1    
  end

  def self.info
    puts "Number of instances = #{@@count}"
  end

  def to_s
    "Name: #{@name} - Height: #{@height}"
  end
end

p1 = Person.new("Ivan1", 176)
p2 = Person.new("Ivan2", 186)


puts p1
puts p2

Person.info

