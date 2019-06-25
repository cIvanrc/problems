$count = 0

describe "LetBang" do
  
  elements = []

  let!(:count) do 
    elements << :let!
    $count+=1
  end

  it 'let!' do
    elements << "element in test"
    expect(elements).to eq([:let!, "element in test"])
    expect(count).to eq(1)
  end
end
