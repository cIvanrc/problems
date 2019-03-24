module Askeable
  def ask(question)
    print question
    gets.chomp
  end
  
end

class Member
  include Askeable

  def initialize(role, index)
    @name = nil
    @age = nil
    @skills = []
    @friends = []
    @role = role
    @index = index
  end

  def member_data
    name
    age
    skills
    friends
    #self
    to_h
  end

  private 

  def name
    @name = ask "#{@role} #{@index} name: " 
  end

  def age
    @age = ask "#{@role} #{@index} age: " 
  end

  def skills  
    @skills  = ask "#{@role} #{@index} skills: " 
  end

  def friends_count
     ask("#{@role} #{@index}.- How many friends do you have?: ").to_i
  end

  def friends
    friends_count.times do |index|
      friend_name = ask "#{@role} #{@index}.-Friend's #{index+1} name: "
      @friends << Friend.new(friend_name).to_h
    end
    @friends
  end

  def to_h
    {name: @name, age: @age,role: @role, skills: @skills, friends: @friends}
  end
end


class Friend
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def to_h
    {name: @name}
  end
end


class Team
  include Askeable
  attr_reader :members

  def initialize
    @members = []
    @role_count = 0
  end

  def ask_role(role)
    @role_count = ask("How many #{role} are?: ").to_i
    data_role role 
  end

  def data_role(role)
    @role_count.times { |index| data role, index+1 } 
  end

  def data(role, index)
    @members << Member.new(role, index).member_data
  end
end


team = Team.new
team.ask_role "developer"
print team.members
puts
