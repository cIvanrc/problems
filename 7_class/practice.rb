# Write a script that asks the name and age for each of the developers on the room (name, age)
# 1. Store them in an array of hashes named developers e.g. [{name: "Walter", age: 25}, {name: "Abraham", age: 29}]
# http://ruby-doc.org/docs/ruby-doc-bundle/Tutorial/part_02/user_input.html
# 2. Store the age in the hash as an integer
# 3. Add a skills array to each developer on the room
# 4. Add a friends key to each developer with a hash describing each friend (name)
# 5. Strip trailing chars of input, look for the appropriate function here:
# http://ruby-doc.org/core-2.4.1/String.html
# 6. Print the developer profile matching the following format:
#  Abraham Kuri is a developer of 29 years old with 3 friends and is able to cook, do magic, ride a bike

# Your script starts here
def main()
  print "Input how many developers are: "
  developers_count = gets.chomp.to_i

  developers = Array.new
  developers_count.times do |developer_index|
    developers << get_developer_data
  end

  developers.each do |developer|
    puts "#{developer[:name]} is a developer of #{developer[:age]} old with #{developer[:friends].size} friends and is able to #{developer[:skills].join(",")}"   
  end
  nil
end

def get_developer_data()
    print "Developer name: "
    developer_name = gets.chomp
    print "Developer age: "
    developer_age = gets.chomp.to_i

    print "Developer skills: "
    developer_skills = gets.chomp

    developer_hash = Hash.new

    developer_hash[:name] = developer_name
    developer_hash[:age] = developer_age
    developer_hash[:skills] = developer_skills.split(",")
    developer_hash[:friends] = get_developer_friends 


    developer_hash 
end


def get_developer_friends()
  print "How many friend do you have?: "
  friends_count = gets.chomp.to_i

  friends = Array.new

  friends_count.times do |i|
    print "Friend name: "
    friend_name = gets.chomp

    friends << {name: friend_name}
  end
  
  friends 
end



developers = main()

# Your script ends here

puts developers.inspect
