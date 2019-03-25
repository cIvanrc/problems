#Write a script to set up core reviews for all reviewees
#Rules are:
  #1. 2 random reviewers per reviewee
  #2. Where the reviewers are selected send an e-mail to the reviewee informing them of the selection
  #3. After the email is sent, create a txt file format of the emial for each reviewee with the follow format
  #------
  #E-mail to: kurenn@icalialabs.com
  #Body:
  #Hi Abraham Kuri
  #Your reviewers are Walter and Vov
  #Sent at: 2018-01-07 20:21:43 -0600
  #-----

#Hint!
  #rand(n) gives you a random number from 0 to n
  #Check the 'Tiem' class on the ruby docs

  #Sample output:
    #Sending E-mail to: kurenn@icalialabs.com
    #Hi Abraham Kuri
    #Your reviewers are Walter and Vov

REVIEWERS = [
  { name: "Walter" },
  { name: "Vov" },
  { name: "Cejas" },
  { name: "Kuri" },
  { name: "Sherwell" },
]

REVIEWEES = [
  { name: "Barbara", email: "bmbrina@icalialabs.com" },
  { name: "Hector", email: "hector@icalialabs.com" },
  { name: "Kevin", email: "kevin@icalialabs.com" },
  { name: "Julian", email: "julz@icalialabs.com" },
  { name: "Luis Gerardo", email: "gvaldez@icalialabs.com" },
  { name: "Cesar Nava", email: "cnava@icalialabs.com" },
]

## Your script starts here
class Shuffler
  def assign!
    MemberAssignator.new(self).assign!
  end

  def reviewers
    @reviewers ||= REVIEWERS.map { |reviewer| Reviewer.new(reviewer[:name]) }
    #@reviewers ||= REVIEWERS.map { |reviewer| p reviewer[:name] }
  end

  def reviewees
    @reviewees ||= REVIEWEES.map { |reviewee| Reviewee.new(reviewee[:name], reviewee[:email]) }
  end
end

class MemberAssignator
  def initialize(shuffler)
    @reviewers = shuffler.reviewers
    @reviewees = shuffler.reviewees
  end

  def assign!
    send_mail
  end

  def assignation
    @assignation ||= @reviewees.map { |reviewee| {reviewee: reviewee, reviewers: sample_reviewers} }
  end

  def sample_reviewers
    @reviewers.sample 2
  end

  def send_mail
    #assignation.each { |assign| Email.new(assign).create_email }
    Email.new(assignation[0]).create_email
  end
end


class Email
  attr_reader :data
  def initialize(data)
    @data = data
  end

  def create_email
    puts @data
  end
end

class Reviewer
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Reviewee
  attr_reader :name, :email
  def initialize(name, email)
    @name = name
    @email = email
  end
end

Shuffler.new.assign!
## Your script ends here
