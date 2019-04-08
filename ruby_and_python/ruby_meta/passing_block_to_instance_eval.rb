class Turtle
  def initialize
    @path = []
  end

  def right(n = 1)
    @path << "r"*n
  end

  def up(n = 1)
    @path << "u"*n
  end

  def path
    @path.join
  end

  def move(&block)
    instance_eval(&block)
  end
end

t = Turtle.new

t.move do 
  right(3)
  up(2)
  right
end

puts t.path
