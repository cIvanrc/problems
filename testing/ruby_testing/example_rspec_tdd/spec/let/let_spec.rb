$count = 0

describe "Let" do
  let(:count) { $count+=1 }

  it '#let 1' do
    expect(count).to eq(1)
    expect(count).to eq(1)
  end

  it '#let 2' do
    expect(count).to eq(2)
  end
end
