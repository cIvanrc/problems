## Create a shuffler project assignator to assign developers that work at Icalia to projects
## 1. Every developer must team with two other members
## 2. Every developer has more or less the same amount of projects
## 3. Build as many classes you think you will need
## 4. Refactor every time you can
## 5. The code at the bottom must run without change
## Hint: http://ruby-doc.org/core-2.2.0/Array.html#method-i-sort

TEAM_MEMBERS = %w{ Walter Kevin Cejas Vov Lentes Scarlett Jesus Cesar Julian Luis }
PROJECTS = %w{ Okudoc Datoz RTS Foresight Whales EstoyBien Sostener StropInsights TKING Vamonos }

## Your code starts here
class Shuffler
  def assign_projects
    MemberAssignator.new(self).assign!
  end

  def members
    @members ||= TEAM_MEMBERS.map { |member| Member.new(member, "developer") }
  end

  def projects
    @projects ||= PROJECTS.map { |project| Project.new(project) }
  end
end

class MemberAssignator

  def initialize(shuffler)
    @members = shuffler.members
    @projects = shuffler.projects
  end

  def assign!
    @projects.each { |project| assign_for project } 
  end

  private

  def assign_for(project)
    assign_project_to_members(project)
    assign_members_to_project(project)
    assign_lead(project)
  end

  def assign_lead(project)
    project.assign_lead
  end

  def assign_project_to_members(project)
    sample_members.each { |member| project.add_member(member) }
  end

  def sample_members(number = 3)
    @members.sample(number)
  end

  def assign_members_to_project(project)
    @members.each { |member| member.add_project(project) }
  end
end

class Member
  attr_reader :name, :role, :projects

  def initialize(name, role)
    @name = name
    @role = role
    @projects = []
  end

  def add_project(project)
    @projects << project
  end
end

class Project
  attr_reader :name, :members, :lead

  def initialize(name)
    @name = name
    @lead = nil 
    @members = []
  end

  def add_member(member)
    @members << member
  end

  def assign_lead
    @lead = @members.sample
  end

end

## Your code ends here

shuffler = Shuffler.new

shuffler.assign_projects

shuffler.members.each do |member|
  puts "###Projects of #{member.name} ###"
  member.projects.each do |project|
    puts "== #{project.name} =="
    puts "Lead name: #{project.lead.name}"
    puts "Members: "
    project.members.each do |member|
      puts "#{member.name} with #{member.role} role"
    end
  end
end
