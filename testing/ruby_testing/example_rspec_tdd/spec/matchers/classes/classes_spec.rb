require 'string_nonempty'

describe "Classess" do
  it 'be_instance_of' do
    expect(5).to be_instance_of(Integer) # exactly the class
  end

  it 'be_kind_of' do
    str = StringNonempty.new

    expect(str).to be_kind_of(String)
    expect(str).to be_kind_of(StringNonempty)
    expect(5).to be_kind_of(Integer) # it can be by inheritance
  end

  it 'respond_to' do
    expect("ruby").to respond_to(:size)
    expect("ruby").to respond_to(:count)
  end

  it 'be_an / be_a' do
    str = StringNonempty.new

    expect(str).to be_an(String)
    expect(str).to be_an(StringNonempty)

    expect(str).to be_a(String)
    expect(str).to be_a(StringNonempty)
  end
end
