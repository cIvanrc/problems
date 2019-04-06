class Puppy
  # Creates an instance variable "state" that you can set in your class.
  # "_reader" means other objects can read your state by calling "some_puppy.state".
  attr_reader :state
  attr_reader :speak

  def initialize
    # Puppies are calm at first.
    @state = :calm
    @pet_count = 0
    @spray_count = 0
  end

  def pet
    # Your code here
    if @pet_count == 0
      @pet_count += 1
      @state = :wagging
    elsif @pet_count == 1
      @pet_count = 0
      @state = :excited
    end
    @state
  end

  def rub_belly
    # Your code here
    @state = :calm
  end

  def spray
    if @spray_count == 0
      @spray_count += 1
      @state = :growling
    elsif @spray_count == 1
      @spray_count = 0
      @state = :angry
    end
    @state
    # Your code here
  end

  def speak
    @message = "Bark!"
    if @state == :growling
      @message = "Grrrr."
    elsif @state == :angry
      @message = "BARK BARK BARK!" 
    end
    @message
    # Your code here
  end
end
my_puppy = Puppy.new

my_puppy.spray
my_puppy.spray
puts my_puppy.state  # :angry

my_puppy.rub_belly
puts my_puppy.state  # :calm
