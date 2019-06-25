describe (1..10), "=> Ranges" do
  it '#cover' do
    expect(subject).to cover(2,7,4)
    expect(subject).not_to cover(0,11)
  end
end
