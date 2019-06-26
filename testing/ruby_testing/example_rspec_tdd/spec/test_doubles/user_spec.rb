describe "Test Double" do
  it '--' do
    user = double
    allow(user).to receive_messages(name: "Ivan", another: "Another")
    puts user.name
    puts user.another
  end
end
