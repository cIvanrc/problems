class Person
  attr_reader :name
  attr_writer :height
  attr_accessor :sex

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

class Employee < Person
  attr_accessor :salary

  def initialize(name, height, salary)
    super(name, height)
    @salary = salary
  end

  def to_s
    super + " - Salary: #{@salary}"
  end
end

p1 = Person.new("ivan1", 180)
p2 = Person.new("ivan2", 160)

e = Employee.new("Rob", 180, 8000)
puts e

p2.height = 170

puts p1.name
#puts p2.height
puts p2
