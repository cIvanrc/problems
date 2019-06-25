describe "Matchers of Equality" do
  before :each do
   puts "BEFORE each test" 
  end

  after :each do
    puts "AFTER each"
  end
  it "#equal - Test if it is the same object" do
    x = "Ruby"
    y = "Ruby"
    expect(x).not_to equal(y)
    expect(x).to equal(x)
  end
  
  it "#be - Test if it is the same object" do
    x = "Ruby"
    y = "Ruby"
    expect(x).not_to be(y)
    expect(x).to be(x)
  end

  it "#eql - Test the value/content" do
    x = "Ruby"
    y = "Ruby"
    expect(x).to eql(y)
  end

  it "#eq - Test the value/content" do
    x = "Ruby"
    y = "Ruby"
    expect(x).to eq(y)
  end
end
