class Thing

  def initialize
    @var = 99
  end
end


t = Thing.new

puts t.instance_eval("@var")
puts t.instance_eval { @var } 


t.instance_eval { @var = "cat" }
puts t.instance_eval { @var }
