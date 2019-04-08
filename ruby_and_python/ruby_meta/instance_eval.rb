class Thing

  def initialize
    @var = 99
  end

  private

  def secret
    puts "a method private"
  end
end


t = Thing.new

t.instance_eval { secret }
#puts t.instance_eval("@var")
#puts t.instance_eval { @var } 


#t.instance_eval { @var = "cat" }
#puts t.instance_eval { @var }
