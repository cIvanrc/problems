require 'person'

describe "Person" do
  it 'have_attributes' do
    person = Person.new
    person.name = "Ivan"
    person.age = 24
    
    expect(person).to have_attributes(name: "Ivan", age: 24)
    expect(person).to have_attributes(name: starting_with("I"), age: (be >= 24))
  end
end
