describe [1,2,3,6,8,9] do
  it '#include' do
    expect(subject).to include(2)
    expect(subject).to include(6,2)
  end

  it '#contain_exactly' do
    expect(subject).to contain_exactly(1,2,3,6,8,9)
  end

  it '#match_array' do
    expect(subject).to match_array([1,2,3,6,8,9])
  end
end
